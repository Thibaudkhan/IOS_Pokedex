//
//  sortButtons.swift
//  pokedex
//
//  Created by Guiock Anthony on 08/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

func SortArray (pokemons : Array<Pokemon>, sortType : String, sortOrder : Bool) -> Array<Pokemon>{
    var sortedArray : Array<Pokemon> = pokemons;
    if(sortType == "name"){
        if (sortOrder) {
            sortedArray = pokemons.sorted(by: {$0.name < $1.name});
        }else{
            sortedArray = pokemons.sorted(by : {$0.name > $1.name});
        }
    }
    if(sortType == "id"){
        if (sortOrder) {
            sortedArray = pokemons.sorted(by: {$0.pkmnId < $1.pkmnId});
        }else{
            sortedArray = pokemons.sorted(by : {$0.pkmnId > $1.pkmnId});
        }
    }
    return sortedArray;
}
