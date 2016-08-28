//
//  ShadowMenuButton.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class ShadowMenuButton: SKNode {
    
    var positionedMenuButton: PositionedMenuButton?
    
    convenience init(size: CGSize, positionedMenuButton button: PositionedMenuButton) {
        self.init()
        let sprite = SKSpriteNode(color: .blue, size: size)
        addChild(sprite)
        positionedMenuButton = button
    }
    
    override public var canBecomeFocused: Bool {
        get {
            return true
        }
    }
    
    func buttonDidGetFocus() {
       positionedMenuButton?.buttonDidGetFocus()
    }
    
    func buttonDidLoseFocus() {
        positionedMenuButton?.buttonDidLoseFocus()
    }
   

}

