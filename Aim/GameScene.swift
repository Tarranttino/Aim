//
//  GameScene.swift
//  Aim
//
//  Created by Macbook on 24.05.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var square = SKSpriteNode()
    var score = 0
    var time = 0
    var timer = Timer()
    
    override func didMove(to view: SKView) {
        
        playGame()
    }
    
    func playGame() {
        scene?.isPaused = false
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
        
        let squareCreate = SKAction.run {
            self.square = self.createSquare()
            self.addChild(self.square)
        }
        let squareCreationDelay = SKAction.wait(forDuration: 0.5)
        let squareRemove = SKAction.run {
            self.square.removeFromParent()
        }
        let squareSequenceAction = SKAction.sequence([squareCreate, squareCreationDelay, squareRemove])
        let squareRunAction = SKAction.repeat(squareSequenceAction, count: 14)
        run(squareRunAction)
    }
    
    
    func createSquare() -> SKSpriteNode {
        
        let square = SKSpriteNode(imageNamed: "redSquare")
        square.size = CGSize(width: 64, height: 64)
        square.name = "square"
        
        let maxY = size.height / 2 - square.size.height / 2
        let minY = -size.height / 2 + square.size.height / 2
        let rangeY = maxY - minY
        let squareY = maxY - CGFloat(arc4random_uniform(UInt32(rangeY)))
        
        let maxX = size.width / 2 - square.size.width / 2
        let minX = -size.width / 2 + square.size.width / 2
        let rangeX = maxX - minX
        let squareX = maxX - CGFloat(arc4random_uniform(UInt32(rangeX)))
        
        square.position = CGPoint(x: squareX, y: squareY)
        
        return square
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self)
            let touchedNode = self.atPoint(location)
            
            if touchedNode.name == "square" {
                square.removeFromParent()
                score = score + 1
                print("score: \(score)")
                if score == 7 {
                    win()
                }
            }
            
        }
    }

    
    @objc func tick() {
        time = time + 1
        print(time)
        if time == 10 {
            gameOver()
        }
    }
    
    func gameOver() {
        scene?.isPaused = true
        timer.invalidate()
        
        self.view?.window?.rootViewController?.performSegue(withIdentifier: "lose", sender: self)
    }
    
    func win() {
        scene?.isPaused = true
        timer.invalidate()
        
        self.view?.window?.rootViewController?.performSegue(withIdentifier: "win", sender: self)
    }
    
//    func restart() -> (Void) {
//        let scene = GameScene(size: self.size)
//        let animation = SKTransition.crossFade(withDuration: 0.5)
//        self.view?.presentScene(scene, transition: animation)
//        print("restart")
//    }
    
    
}
