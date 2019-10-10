//
//  PokemonViewCellViewModel.swift
//  pokedex
//
//  Created by Guiock Anthony on 10/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

struct PokemonTableViewCellViewModel {

    let cellIndex : Int;
    let pokemonName : String;
    let pokemonId : String;
    let pokemonImageURL : String;
    
    init(cellIndex : Int, pokemonName : String, pokemonId : Int, pokemonImageURL : String) {
        self.cellIndex = cellIndex
        self.pokemonName = pokemonName
        self.pokemonId = "#(pokemonId)"
        self.pokemonImageURL = pokemonImageURL
    }
}
