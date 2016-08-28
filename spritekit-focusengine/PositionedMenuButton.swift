//
//  PositionedMenuButton.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class PositionedMenuButton: SKNode {
    
    var shadowButton: ShadowMenuButton?
    
    convenience init(text: String) {
        self.init()
        let textNode = SKLabelNode(text: text)
        textNode.fontSize = 100
        textNode.fontColor = .yellow
        textNode.verticalAlignmentMode = .center
        addChild(textNode)
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
    
    func addShadowNodeToTopParent() {
        
        shadowButton = ShadowMenuButton(size: self.children.first!.frame.size, positionedMenuButton: self)
        
        var topParent: SKNode = self
        while topParent.parent != nil {
            topParent = topParent.parent!
        }
        shadowButton!.position = topParent.convert(self.position, from: self.parent!)
        shadowButton!.isUserInteractionEnabled = true
        topParent.addChild(shadowButton!)
    }
    
    func tapped() {
        if let textNode = children.first as? SKLabelNode {
            print (textNode.text)
        }
    }
}

