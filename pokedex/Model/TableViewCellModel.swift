//
//  TableViewCellModel.swift
//  pokedex
//
//  Created by Roussel Thibaud on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation
import UIKit

struct TableViewCellModel {
    let cellIndex : Int;
    let pokeName : String;
    let pokeId : String;
    let pokeImage : String;
    
    init(cellIndex : Int, pokeName : String, pokeId : Int, pokeImage : String) {
        self.cellIndex = cellIndex;
        self.pokeName = pokeName;
        self.pokeId = "#\(pokeId)";
        self.pokeImage = pokeImage;
    }
    
}
