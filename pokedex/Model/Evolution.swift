//
//  Evolution.swift
//  pokedex
//
//  Created by Guiock Anthony on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

enum evolutionMethod {
    case Stone
    case Other
    case LevelUp
}

class Evolution {
    var id : String;
    var method : evolutionMethod = evolutionMethod.Other;
    var name : String = "";
    var lvl : Int?;
    
    init(id : String, method : String, name : String, lvl : Int?) {
        self.id = id;
        self.method = SetEvolutionMethod(evolMethod: method);
        self.name = name;
        self.lvl = lvl;
    }
    
    func GetImgEvol () {//Retour IMG
    }
    
    func SetEvolutionMethod(evolMethod : String) -> evolutionMethod{
        switch evolMethod {
        case "stone":
            return evolutionMethod.Stone;
        case "other" :
            return evolutionMethod.Other;
        case "level_up":
            return evolutionMethod.LevelUp;
        default:
            return evolutionMethod.Other;
        }
    }
    

}
