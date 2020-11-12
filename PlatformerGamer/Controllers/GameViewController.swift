//
//  GameViewController.swift
//  PlatformerGamer
//
//  Created by Grant Yap on 11/12/20.
//  Copyright © 2020 Grant Yap. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = MainMenu(size: CGSize(width: 2048, height: 1536))
        scene.scaleMode = .aspectFill
        
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.showsPhysics = true
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
        
    }

    

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
