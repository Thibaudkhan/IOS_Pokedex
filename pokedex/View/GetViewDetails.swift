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
    @IBOutlet weak var pokDetId: UILabel!
    var pokemons : Array<Pokemon> = PokemonAPI.GetPkmns();
    let viewController = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // pokDetId.text =

        //let test = viewController.tableView(<#T##tableView: UITableView##UITableView#>, didSelectRowAt: IndexPath(index: 1))
        //pokDetId.text = String(test)
 
        // Do any additional setup after loading the view.
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
