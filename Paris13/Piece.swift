//
//  Piece.swift
//  Paris13
//
//  Created by Soma Bini on 11/06/2018.
//  Copyright © 2018 Soma Bini. All rights reserved.
//

import Foundation
//
//  Piece.swift
//  game
//
//  Created by etudiant on 30/05/2018.
//  Copyright © 2018 eudiant. All rights reserved.
//

import SpriteKit

let TYPEPIECES: Array = ["Vide", "tarte-pomme", "tarte-framboises","tarte-mytrilles", "mille-feuille","flan-choco", "brownie"]

class Piece {
    var numCol, numLig:Int
    var type: Int = 0
    var sprite: SKSpriteNode?
    
    init(colonne: Int, ligne: Int){
        self.numCol = colonne
        self.numLig = ligne
        self.type = choisirTypePiece()
        print(affichagePiece)
    }
    private func choisirTypePiece() -> Int{
        return Int(arc4random_uniform(6))
    }
    
    internal func affichagePiece() -> String {
        return "Piece : (\(numCol), \(numLig)) de type \(type)"
    }
    
    internal func afficheType() -> String {
        return "(\(self.type))"
    }
    
}
