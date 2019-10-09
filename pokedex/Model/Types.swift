//
//  Types.swift
//  pokedex
//
//  Created by Guiock Anthony on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import Foundation
import UIKit

enum Types : String {
    case Steel
    case Fighting
    case Dragon
    case Water
    case Electric
    case Fairy
    case Fire
    case Ice
    case Bug
    case Normal
    case Grass
    case Poison
    case Psychic
    case Rock
    case Ground
    case Ghost
    case Dark
    case Flying
    
    func GetImg() -> UIImage? {
        switch self {
        case .Steel:
            return UIImage(named: "Steel");
        case .Fighting:
            return UIImage(named: "Fighting");
        case .Dragon:
            return UIImage(named: "Dragon");
        case .Water:
            return UIImage(named: "Water");
        case .Electric:
            return UIImage(named: "Electric");
        case .Fairy:
            return UIImage(named: "Fairy");
        case .Fire:
            return UIImage(named: "Fire");
        case .Ice:
            return UIImage(named: "Ice");
        case .Bug:
            return UIImage(named: "Bug");
        case .Normal:
            return UIImage(named: "Normal");
        case .Grass:
            return UIImage(named: "Grass");
        case .Poison:
            return UIImage(named: "Poison");
        case .Psychic:
            return UIImage(named: "Psychic");
        case .Rock:
            return UIImage(named: "Rock");
        case .Ground:
            return UIImage(named: "Ground");
        case .Ghost:
            return UIImage(named: "Ghost");
        case .Dark:
            return UIImage(named: "Dark");
        case .Flying:
            return UIImage(named: "Flying");
        }
    }
}

