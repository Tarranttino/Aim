//
//  MainMenu.swift
//  Aim
//
//  Created by Macbook on 25.05.2021.
//

import SpriteKit
import GameplayKit

class MainMenuScene: SKScene {
    let start = SKSpriteNode(imageNamed: "startButton")
    
    override func didMove(to view: SKView) {
        start.size = CGSize(width: 200, height: 200)
        
        addChild(start)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let posistion = touch.location(in: self)
            let node = self.atPoint(posistion)
            if node == start {
                if let originalScene = SKScene(fileNamed: "GameScene") {
                    originalScene.scaleMode = .aspectFill
                    view?.presentScene(originalScene)
                }
            }
        }
    }
    
}
