//
//  ScoreGenerator.swift
//  PlatformerGamer
//
//  Created by Grant Yap on 11/12/20.
//  Copyright © 2020 Grant Yap. All rights reserved.
//

import Foundation

class ScoreGenerator {
    static let sharedInstance = ScoreGenerator()
    private init(){}
    
    static let keyHighscore = "keyHighscore"
    static let keyScore = "keyScore"
    
    func setScore(_ score: Int) {
        UserDefaults.standard.set(score, forKey: ScoreGenerator.keyScore)
    }
    func getScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyScore)
    }
    func setHighScore(_ highscore: Int) {
        UserDefaults.standard.setValue(highscore, forKey: ScoreGenerator.keyHighscore)
    }
    func getHighScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyHighscore)
    }
}
