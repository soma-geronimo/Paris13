//
//  Niveau.swift
//  Paris13
//
//  Created by Soma Bini on 11/06/2018.
//  Copyright © 2018 Soma Bini. All rights reserved.
//
import Foundation

let NBCOLONNES: Int = 9
let NBLIGNES: Int = 9

class Niveau {
    internal var plateau: Array<Array<Piece>>
    
    init(){
        self.plateau = Array<Array<Piece>>()
    }
    
    private func creerPlateau(){
        
        for lig in 0..<NBLIGNES{
            var tabLig:Array<Piece> = Array<Piece>()
            
            for col in 0..<NBCOLONNES{
                let p:Piece = Piece(colonne: col, ligne: lig)
                tabLig.append(p)
            }
            plateau.append(tabLig)
            
        }
    }
    
    internal func afficheTableau() -> String {
        var ch: String
        ch = "Plateau: \(plateau)"
        return ch
    }
}
