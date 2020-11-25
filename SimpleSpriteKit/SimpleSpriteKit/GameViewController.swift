//
//  GameViewController.swift
//  SimpleSpriteKit
//
//  Created by Robert Linnemann on 11/24/20.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = SKView()
        self.view.addSubview(skView)
        skView.translatesAutoresizingMaskIntoConstraints = false
        skView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        skView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        skView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        skView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        let scene = GameScene(size: view.bounds.size)

        scene.scaleMode = .fill
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        
        skView.showsFPS = true
        skView.showsNodeCount = true
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
