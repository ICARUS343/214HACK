//
//  TVC.swift
//  Bar-Tutor
//
//  Created by praphul shivakoti on 10/29/20.
//  Copyright © 2020 praphul shivakoti. All rights reserved.
//

import UIKit
import CoreData
class TVC: UITableViewController {
    var rowNo = 0;

    var recipe: [NSManagedObject] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as? String
        readData()
        
        
       
    }

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipe.count
    }
    
    func readData() {
        let context = AppDelegate.cdContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Item")
        do {
            recipe = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch requested item. \(error), \(error.userInfo)")
        }
        tableView.reloadData()
    }
    
    //function to create the view on click
    func createDataForDetail(row:Int) -> NSManagedObject{
        let item = recipe[row]
        return item
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var item = createDataForDetail(row: rowNo)
        if segue.identifier == "LoadDetailSeg" {
              let vc = segue.destination as! DetailVC
            vc.nameValue = item.value(forKey: "name") as? String
            print(vc.nameValue)
            print("Asdasdasdasd")
          }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)

        let item = recipe[indexPath.row]
        cell.textLabel?.text = item.value(forKeyPath: "name") as? String
        cell.detailTextLabel?.text = item.value(forKeyPath: "image") as? String
        return cell
    }
    

   
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowNo = indexPath.row
    }
    

}
