//
//  GameViewController.swift
//  AnimatedBearSwift
//
//  Created by Anushka V on 4/15/19.
//  Copyright © 2019 AnushkaV. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene(size: view.bounds.size)
            scene.scaleMode = .resizeFill
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            view.presentScene(scene)
        }
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
