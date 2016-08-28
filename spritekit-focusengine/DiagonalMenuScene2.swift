//
//  DiagonalMenuScene2.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit

class DiagonalMenuScene2: SKScene {
    
    var buttons = [DiagonalMenuButton]()
    
    override func didMove(to view: SKView) {
        
        let button1 = DiagonalMenuButton(text: "Button 1")
        button1.position = CGPoint(x: 200, y: 700)
        buttons.append(button1)
        addChild(button1)
        
        let button2 = DiagonalMenuButton(text: "Button 2")
        button2.position = CGPoint(x: 800, y: 500)
        buttons.append(button2)
        addChild(button2)
        
        let button3 = DiagonalMenuButton(text: "Button 3")
        button3.position = CGPoint(x: 1400, y: 300)
        buttons.append(button3)
        addChild(button3)
        
        
        for button in buttons {
            button.isUserInteractionEnabled = true
        }
        
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        let prevItem = context.previouslyFocusedItem
        let nextItem = context.nextFocusedItem
        
        if let prevButton = prevItem as? DiagonalMenuButton {
            prevButton.buttonDidLoseFocus()
        }
        if let nextButton = nextItem as? DiagonalMenuButton {
            nextButton.buttonDidGetFocus()
        }
    }
    
}
