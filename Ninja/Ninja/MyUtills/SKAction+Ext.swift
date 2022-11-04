//
//  SKTAction+Ext.swift
//  Ninja
//
//  Created by MacBook Air on 17.08.2022.
//

import SpriteKit

extension SKAction {
    class func playSoundFileNamed(_ fileNamed: String) -> SKAction {
        if !effectEnabled { return SKAction() }
        return SKAction.playSoundFileNamed(fileNamed, waitForCompletion: false)
    }
}
private let keyEffect = "keyEffect"
var effectEnabled: Bool = {
    return !UserDefaults.standard.bool(forKey: keyEffect)
}() {
    didSet {
        let value = !effectEnabled
        UserDefaults.standard.set(value, forKey: keyEffect)
        
        if value {
            SKAction.stop()
        }
    }
}
