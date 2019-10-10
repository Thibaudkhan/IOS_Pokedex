//
//  GetViewDetails.swift
//  pokedex
//
//  Created by Roussel Thibaud on 10/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import UIKit
import Alamofire


class GetViewDetails: UIViewController {
    //@IBOutlet weak var pokTableLbl: UILabel!
    
    @IBOutlet weak var pokDetId: UILabel!
    
    var pokemons : Array<Pokemon> = PokemonAPI.GetPkmns();
    
    var theIndex : String = "" ;
    
    var viewController = ViewController?.self {
        didSet{
            pokDetId.text = ViewController().GetPokIndex()
            print(ViewController().GetPokIndex())
        }
        /*willSet(viewController.GetPokIndex()){
        
        
        }*/
        
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //pokDetId.text = viewController.GetPokIndex() //viewController.GetPokIndex();
        //pokTableId.reloadData()
        //var test = viewController.tableView(, didSelectRowAt: IndexPath(index: 1))
        //pokDetId.text = String(test)
        //var test = viewController.pokIndex;
 
        // Do any additional setup after loading the view.
    }
    

}
