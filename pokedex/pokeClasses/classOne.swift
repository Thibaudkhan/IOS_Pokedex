//
//  classOne.swift
//  pokedex
//
//  Created by Guiock Anthony on 07/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation
import UIKit

class ClassOne {
    
    init() {
        result = "";
    }
    
    var hello : String = "Hello";
    var world : String = "World";
    var result : String;
    
    func HelloConcat() -> String{
        result = hello + " " + world;
        return result;
    }
}
