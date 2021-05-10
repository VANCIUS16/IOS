//
//  GameScene.swift
//  Actividad_14_MNP
//
//  Created by user190573 on 5/10/21.
//  Copyright © 2021 user190573. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    let fondo = SKSpriteNode(imageNamed: "fondo2")
    //let num1 = SKSpriteNode(imageNamed: "Spaceship")
    var num1 = SKSpriteNode(imageNamed: "flash")
    let flash2 = SKSpriteNode(imageNamed: "flash 2")
    
    override func didMove(to view: SKView)
    {
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        num1.position = CGPoint(x: 0, y: -320)
        num1.size = CGSize(width: 200, height: 200)
        fondo.zPosition = -1
        
        addChild(fondo)
        fondo.addChild(num1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        num1.texture = SKTexture(imageNamed: "flash 2")
        num1.run(SKAction.move(to: CGPoint(x: 0, y: fondo.size.height), duration: 5))
        self.num1.position = CGPoint.zero
        
    }
   
    override func update(_ currentTime: CFTimeInterval)
    {
        num1.position = CGPoint(x: 0, y: -320)
    }
}
