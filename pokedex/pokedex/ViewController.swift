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
    let tab = ["efef","feffe","ndfdl"];
    var pokemons : Array<Pokemon> = PokemonAPI.GetPkmns();
    var pokIndex : Int = 5;
    var currentPokemon : Pokemon?;
    var idDetail : Int = 5;
    let cellid : String = "cell"
    
    
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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as? TableViewCell else {
            fatalError("mdr")
        }

        let pokemonViewModel = TableViewCellModel(cellIndex: indexPath.row, pokeName: currentPokemon.name, pokeId: currentPokemon.pkmnId, pokeImage: currentPokemon.img_url);
        currentPokemon = pokemons[indexPath.row];
        print("pkmn ant aa : ")
        print(self.currentPokemon?.pkmnId);
        
        cell.pokeName.text = currentPokemon?.name;
        cell.pokeId.text = "#" + String(currentPokemon!.pkmnId);
        cell.pokeImage.af_setImage(withURL: URL(string: currentPokemon!.img_url)!);
        print("type currentPoke : ")
        print(type(of: currentPokemon))
        //cell.text = list[indexPath.row]
        return cell
    }
    
   /* public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> Pokemon  {
        currentPokemon = pokemons[indexPath.row];
        
        return currentPokemon! ;
    }*/
    
    
    @IBAction func sortOrder(_ sender: Any) {
        let getOrder = sortOrderBtn.selectedSegmentIndex;
        let getAlpha = sortAlphaBtn.selectedSegmentIndex;
 
        if(getAlpha == 0){
            if(getOrder == 0){
                pokemons = SortArray(pokemons: pokemons, sortType: "id", sortOrder: true);
            }else{
                pokemons = SortArray(pokemons: pokemons, sortType: "id", sortOrder: false);
            }
            
        }else{
            if(getOrder == 0){
                pokemons = SortArray(pokemons: pokemons, sortType: "name", sortOrder: true);
            }else{
                pokemons = SortArray(pokemons: pokemons, sortType: "name", sortOrder: false);
            }
        }
        
        pokeList.reloadData()
        
        
    }
    
    
  @IBAction func sortAlpha(_ sender: Any) {
    let getOrder = sortOrderBtn.selectedSegmentIndex;
    let getAlpha = sortAlphaBtn.selectedSegmentIndex;
    
    if(getAlpha == 0){
        if(getOrder == 0){
            pokemons = SortArray(pokemons: pokemons, sortType: "id", sortOrder: true);
        }else{
            pokemons = SortArray(pokemons: pokemons, sortType: "id", sortOrder: false);
        }
        
    }else{
        if(getOrder == 0){
            pokemons = SortArray(pokemons: pokemons, sortType: "name", sortOrder: true);
        }else{
            pokemons = SortArray(pokemons: pokemons, sortType: "name", sortOrder: false);
        }
    }
    
    pokeList.reloadData()
    }
    
   
    
    // Lier page 1 à detail
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("ntm")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.currentPokemon = pokemons[indexPath.row];
        
        pokIndex = self.currentPokemon!.pkmnId;
        performSegue(withIdentifier: "segue", sender: self)
        GetPokIndex()
        //print(pokIndex);
        //print("le ppokIndex "+String(self.pokIndex));
        //return pokIndex;
    }

    func GetPokIndex()-> String{
        print(pokIndex);
        print("le ppokIndex "+String(self.pokIndex));
            //self.currentPokemon!.pkmnId = 1
         //idDetail = self.currentPokemon?.pkmnId ?? 1
        //idDetail = self.currentPokemon!.pkmnId
        return String(self.idDetail)
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



