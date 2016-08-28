//
//  GameViewController.swift
//  spritekit-focusengine
//
//  Created by Gordon Johnston on 28/08/2016.
//  Copyright © 2016 FoldedPlane. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var currentScene:SKScene?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            let scene = SimpleMenuScene(size: view.frame.size)
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            currentScene = scene
            // Present the scene
            view.presentScene(scene)
    
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        if let scene = currentScene {
            return [scene]
        } else {
            return []
        }
    }
 
}
