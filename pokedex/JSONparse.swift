//
//  JSONparse.swift
//  pokedex
//
//  Created by Lucas raicovitch on 08/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation
import SwiftyJSON

class JsonParse {
    init() {
        
    }
    func SerializeJson(jsonData : Data?) -> Array<Pokemon> {
        var pokemons : [[String : Any]] = [];
        var returnedArray : Array<Pokemon> = [];
        
        do{
            pokemons = try JSONSerialization.jsonObject(with: jsonData!) as! [[String : Any]];
            for pokemon in pokemons {
                let pkmn : Pokemon = Pokemon.init(
                    jsonId: pokemon["_id"] as! String,
                    pkmnId: pokemon["national_id"] as! Int,
                    name: pokemon["name"] as! String,
                    img_url: pokemon["image_url"] as! String,
                    //evol: ,
                    description: pokemon["description"] as! String)
                //pkmn.pkmnId = pokemon["national_id"] as! Int;
                //pkmn.description = pokemon["description"] as! String;
                //pkmn.name = pokemon["name"] as! String;
                for type in pokemon["types"] as! Array<String>{
                    //pkmn.SetType(type: type);
                }
                returnedArray.append(pkmn);
                //print(pokemon["evolutions"]);
            }
        } catch{
            print("oops");
        }
        return returnedArray;
    }
}

