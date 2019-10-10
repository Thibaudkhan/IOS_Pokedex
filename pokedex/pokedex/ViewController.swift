//  ViewController.swift
//  pokedex
//
//  Created by Guiock Anthony on 07/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.


import UIKit
import Alamofire
import AlamofireImage

//import SwiftyJSON

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var sortAlphaBtn: UISegmentedControl!
    @IBOutlet weak var sortOrderBtn: UISegmentedControl!
    @IBOutlet weak var pokeList: UITableView!
    
    var pokemons : Array<Pokemon> = PokemonAPI.GetPkmns();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(pokemons.count)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as? TableViewCell else {
            fatalError("mdr")
        }
        
        let currentPokemon = pokemons[indexPath.row];
        
        let pokemonViewModel = TableViewCellModel(cellIndex: indexPath.row, pokeName: currentPokemon.name, pokeId: currentPokemon.pkmnId, pokeImage: currentPokemon.img_url);
        
        (cell as TableViewCell).viewModel = pokemonViewModel;
        
        
//        cell.pokeName.text = currentPokemon.name;
//        cell.pokeId.text = "#" + String(currentPokemon.pkmnId);
//        cell.pokeImage.af_setImage(withURL: URL(string: currentPokemon.img_url)!);
        

        //cell.text = list[indexPath.row]
        return cell
    }
    
    
    @IBAction func sortAlpha(_ sender: Any) {
        let getIndex = sortAlphaBtn.selectedSegmentIndex;
       
        print(getIndex)
        
        if getIndex == 0{
             pokemons = SortArray(pokemons : pokemons, sortType : "id", sortOrder : true)
            
        }else{
             pokemons = SortArray(pokemons : pokemons, sortType : "id", sortOrder : false)
        }
        
        pokeList.reloadData()
        
        
    }
    
    
    @IBAction func sortOrder(_ sender: Any) {
        let getIndex = sortOrderBtn.selectedSegmentIndex;
        
        print(getIndex)
        
        if getIndex == 0{
            pokemons = SortArray(pokemons : pokemons, sortType : "name", sortOrder : true)
            
        }else{
            pokemons = SortArray(pokemons : pokemons, sortType : "name", sortOrder : false)
        }
        pokeList.reloadData()
    }
    
    
    /*@IBAction func displayMessage(sender: UIButton){
        
        // use let to define a constant String variable.
        
        // Get sender button label text.
        
        let buttonLabel : String = (sender.titleLabel?.text)!
        
        // Create alert title and message body.
        
        let alertTitle : String = "Hello " + buttonLabel
        
        let alertMessage : String = "Biatch."
        
        // Create a UIAlertController object.
        
        let alertController : UIAlertController = UIAlertController(title: alertTitle, message : alertMessage, preferredStyle : UIAlertController.Style.alert)
        
        // Create a UIAlertAction object.
        
        let alertAction : UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        // Add alertAction to alertController.
        
        alertController.addAction(alertAction);
        
        // Present the popup alert dialog.
        
        present(alertController, animated: true, completion: nil)
        
    }*/
    
}



