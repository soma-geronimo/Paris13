//
//  GameViewController.swift
//  Paris13
//
//  Created by Soma Bini on 11/06/2018.
//  Copyright © 2018 Soma Bini. All rights reserved.
//
import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prefersStatusBarHidden()
        
        shouldAutorotate()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }
    
    
}

