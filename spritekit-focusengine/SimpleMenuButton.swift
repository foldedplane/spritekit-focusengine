//
//  SimpleMenuButton.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class SimpleMenuButton: SKNode {
    
    convenience init(text: String) {
        self.init()
        let textNode = SKLabelNode(text: text)
        textNode.fontSize = 100
        textNode.fontColor = .yellow
        addChild(textNode)
    }
    
    override public var canBecomeFocused: Bool {
        get {
            return true
        }
    }
        
    func buttonDidGetFocus() {
        if let labelNode = children.first as? SKLabelNode {
            labelNode.fontColor = .red
        }
    }
    
    func buttonDidLoseFocus() {
        if let labelNode = children.first as? SKLabelNode {
            labelNode.fontColor = .yellow
        }
    }
    
}
