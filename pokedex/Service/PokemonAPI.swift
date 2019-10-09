//
//  PokemonAPI.swift
//  pokedex
//
//  Created by Roussel Thibaud on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

class PokemonAPI{
    static var jsonParser = JsonParse();
    
    static func GetPkmns() -> Array<Pokemon> {
        let path = Bundle.main.path(forResource: "pokedex", ofType: "json");
        let url : URL = URL(fileURLWithPath: path!);
        var dataJson = try! Data(contentsOf: url);
        return jsonParser.SerializeJson(jsonData : dataJson);
    }
    
}

//let jsonParser = JsonParse.init();
//request = Alamofire.request("https://trello-attachments.s3.amazonaws.com/5cc6b739765c887379627adc/5d9a165fc8efec7a2bfa8a65/x/e47275cb0fd8895e24c206860216b1c4/pokemon.json");
////Lecture Json
//request.responseData {
//    response in
//    jsonContent = response.result.value;
//    self.pokemons = jsonParser.SerializeJson(jsonData: jsonContent);
//
//
//    self.pokemons.shuffle();
//    for pkmn in self.pokemons {
//        print(pkmn.name);
//    }
//    self.pokemons = SortArray(pokemons: self.pokemons, sortType: "name", sortOrder: true);
//    for pkmn in self.pokemons {
//        print(pkmn.name);
//}
