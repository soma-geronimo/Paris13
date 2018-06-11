//
//  GameScene.swift
//  Paris13
//
//  Created by Soma Bini on 11/06/2018.
//  Copyright © 2018 Soma Bini. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    let PIECE_WIDTH:Int=40, PIECE_HEIGHT:Int = 40
    
    class GameScene: SKScene {
        var numNiveau:Int?, nivActuel:Niveau?, calquePlateau: SKNode?, calquePieces: SKNode?
        var pt:CGPoint = CGPoint (x:5, y:20)
        
        required init?(coder aDecoder:NSCoder){
            fatalError("init(coder) is not used in this app")
        }
        
        
        override init(size: CGSize){
            super.init(size: size)
            numNiveau = 1
            anchorPoint = CGPoint(x:0.5, y:0.5)
            let background = SKSpriteNode(imageNamed: "Background")
            background.size = size
            addChild(background)
            
            nivActuel = Niveau()
            
            calquePieces = SKNode()
            calquePlateau = SKNode()
            addChild(calquePlateau!);
            calquePlateau!.addChild(calquePieces!);
            
            let pos = CGPoint(x: -CGFloat(PIECE_WIDTH) * CGFloat(NBCOLONNES) / 2,
                              y: -CGFloat(PIECE_HEIGHT) * CGFloat(NBLIGNES) / 2)
            calquePieces!.position = pos
            ajouterSprites(nivActuel!.plateau)
        }
        
        private func calculerCGPoint(col: Int, lig: Int) -> CGPoint {
            return CGPoint(x: ((PIECE_WIDTH * col) + 2), y: (NBLIGNES - lig) * PIECE_HEIGHT)
        }
        
        private func ajouterSprites(plat: Array<Array<Piece>>){
            let i:Int
            let j:Int
            
            for i in 0...(NBCOLONNES-1) {
                for j in 0...(NBLIGNES-1) {
                    let sprite = SKSpriteNode(imageNamed: "Mille-feuille");
                    sprite.size = CGSize(width: PIECE_WIDTH, height: PIECE_HEIGHT);
                    sprite.position = calculerCGPoint(i, lig: j);
                    calquePieces!.addChild(sprite);
                    print("coucou")
                }
            }
        }
        
    }
  
}
