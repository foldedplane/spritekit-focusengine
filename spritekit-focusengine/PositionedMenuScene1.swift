//
//  PositionedMenuScene1.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class PositionedMenuScene1: SKScene {
    
    var buttons = [SimpleMenuButton]()
    
    override func didMove(to view: SKView) {
        
        let menuStack = SKNode()
        
        let button1 = SimpleMenuButton(text: "Button 1")
        button1.position = CGPoint(x: 300, y: 700)
        buttons.append(button1)
        menuStack.addChild(button1)
        
        let button2 = SimpleMenuButton(text: "Button 2")
        button2.position = CGPoint(x: 300, y: 500)
        buttons.append(button2)
        menuStack.addChild(button2)
        
        let button3 = SimpleMenuButton(text: "Button 3")
        button3.position = CGPoint(x: 300, y: 300)
        buttons.append(button3)
        menuStack.addChild(button3)
        
        menuStack.position = CGPoint(x: 100, y: 100)
        addChild(menuStack)
        
        for button in buttons {
            button.isUserInteractionEnabled = true
        }
        
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        let prevItem = context.previouslyFocusedItem
        let nextItem = context.nextFocusedItem
        
        if let prevButton = prevItem as? SimpleMenuButton {
            prevButton.buttonDidLoseFocus()
        }
        if let nextButton = nextItem as? SimpleMenuButton {
            nextButton.buttonDidGetFocus()
        }
    }
    
}

