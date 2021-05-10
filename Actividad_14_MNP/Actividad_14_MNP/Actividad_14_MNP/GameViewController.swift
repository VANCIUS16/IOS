//
//  GameViewController.swift
//  Actividad_14_MNP
//
//  Created by user190573 on 5/10/21.
//  Copyright © 2021 user190573. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        if let View = self.view as! SKView?
        {
            let scene = GameScene(size: View.bounds.size)
            scene.scaleMode = .aspectFill
            View.presentScene(scene)
            View.ignoresSiblingOrder = true
            View.showsFPS = true
            View.showsNodeCount = true
            View.showsPhysics = true
        }
    }
}
