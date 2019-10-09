//
//  PokeTable.swift
//  pokedex
//
//  Created by Roussel Thibaud on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation
import UIKit


class PokeTable {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        
    }
}
