//
//  Pokemon.swift
//  pokedex
//
//  Created by Guiock Anthony on 08/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

class Pokemon {
    var jsonId : String;
    var pkmnId : Int;
    var name : String;
    //var types :[Types];
    var img_url : String;
    var evol : [Evolution]?;
    var description : String;
    
    init(
        jsonId : String,
        pkmnId : Int,
        name : String,
        img_url : String,
        //types : Array<String>,
        //evol : [Evolution],
        description : String
    ){
        self.jsonId = jsonId;
        self.pkmnId = pkmnId;
        self.name = name;
        self.img_url = img_url;
        //for type in types {
            //SetType(type: type);
        //}
        //self.evol = evol;
        self.description = description;
    }
    
    
   /* func SetType (type : String){
        switch type {
            case "steel":
                self.types.append(Types.Steel);
                break;
            case "fighting":
                self.types.append(Types.Fighting);
                break;
            case "dragon":
                self.types.append(Types.Dragon);
                break;
            case "water":
                self.types.append(Types.Water);
                break;
            case "electric":
                self.types.append(Types.Electric);
                break;
            case "fairy":
                self.types.append(Types.Fairy);
                break;
            case "fire":
                self.types.append(Types.Fire);
                break;
            case "ice":
                self.types.append(Types.Ice);
                break;
            case "bug":
                self.types.append(Types.Bug);
                break;
            case "normal":
                self.types.append(Types.Normal);
                break;
            case "grass":
                self.types.append(Types.Grass);
                break;
            case "poison":
                self.types.append(Types.Poison);
                break;
            case "psychic":
                self.types.append(Types.Psychic);
                break;
            case "rock":
                self.types.append(Types.Rock);
                break;
            case "ground":
                self.types.append(Types.Ground);
                break;
            case "ghost":
                self.types.append(Types.Ghost);
                break;
            case "dark":
                self.types.append(Types.Dark);
                break;
            case "flying":
                self.types.append(Types.Flying);
                break;
            default:
                break;
        }
    }
 */
}


