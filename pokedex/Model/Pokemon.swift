//
//  Pokemon.swift
//  pokedex
//
//  Created by Guiock Anthony on 08/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation

class Pokemon {
    
    init(pkmnId : Int, name : String) {
        self.pkmnId = pkmnId;
        self.name = name;
    }
    
    var jsonId : String = "";
    var pkmnId : Int = 0;
    var name : String = "";
    
}


