//
//  ScoreGenerator.swift
//  Ninja
//
//  Created by MacBook Air on 17.08.2022.
//

import Foundation

class ScoreGenerator {
    
    static let sharedInstance = ScoreGenerator()
    private init() {}
    
    static let keyHighScore =  "keyHighScore"
    static let keyScore = "keyScore"
    
    func setScore(_ score: Int) {
        UserDefaults.standard.set(score, forKey: ScoreGenerator.keyScore)
    }
    
    func getScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyScore)
    }
    
    func setHighScore(_ highscore: Int) {
        UserDefaults.standard.set(highscore, forKey: ScoreGenerator.keyHighScore)
    }
    
    func getHighScore() -> Int {
        return UserDefaults.standard.integer(forKey: ScoreGenerator.keyHighScore)
    }
    
    
}
