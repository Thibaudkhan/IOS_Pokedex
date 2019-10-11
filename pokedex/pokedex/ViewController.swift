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

    //@IBOutlet weak var colorChangedBtn: UISegmentedControl!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet weak var sortAlphaBtn: UISegmentedControl!
    @IBOutlet weak var sortOrderBtn: UISegmentedControl!
    
    @IBOutlet weak var pokeList: UITableView!
    let tab = ["efef","feffe","ndfdl"];
    var pokemons : Array<Pokemon> = PokemonAPI.GetPkmns();
    var pokIndex : Int = 5;
    var currentPokemon : Pokemon?;
    var idDetail : Int = 5;
    let cellid : String = "TableViewCell"
    var testIm = UIImage();
    
    
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

        //let pokemonViewModel = TableViewCellModel(cellIndex: indexPath.row, pokeName: currentPokemon!.name, pokeId: currentPokemon!.pkmnId, pokeImage: currentPokemon!.img_url);
        currentPokemon = pokemons[indexPath.row];
        print("pkmn ant aa : ")
        print(self.currentPokemon?.pkmnId);
        
        cell.pokeName.text = currentPokemon?.name;
        cell.pokeId.text = "#" + String(currentPokemon!.pkmnId);
        cell.pokeImage.af_setImage(withURL: URL(string: currentPokemon!.img_url)!);
        //testIm = cell.pokeImage.af_setImage(withURL: URL(string: currentPokemon!.img_url)!);
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
    
    
   //Changer la couleur background
    
    
    
    /*@IBAction func SwitchColor(_ sender: UISegmentedControl) {
        let color = colorChangedBtn.selectedSegmentIndex;
        if color == 0{
            viewContainer.backgroundColor = UIColor.red
        }
        if color == 1{
            viewContainer.backgroundColor = UIColor.black
            //colorChangedTable.backgroundColor = UIColor.black
        }
    
    }*/
    
    // Lier page 1 à detail
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let instantSb = storyboard.instantiateViewController(withIdentifier: "GetViewDetails") as! GetViewDetails
        //var test =  ImageDownloader.download(imageURLString: "http://assets22.pokemon.com/assets/cms2/img/pokedex/full/001.png")
        //var test = ImageDownloader.download(withURL: (String: currentPokemon!.img_url));
        instantSb.theName = pokemons[indexPath.row].name;
        instantSb.theId = pokemons[indexPath.row].pkmnId;
        instantSb.theDesc = pokemons[indexPath.row].description;
        //instantSb.theImage = test
        
        //instantSb.theImage = self.pokeImage.af_setImage(withURL: URL(string: currentPokemon!.img_url)!);
        // print("Au click "+String(instantSb.theName));
        // pokIndex = self.currentPokemon!.pkmnId;
        // splitViewController?.showDetailViewController(instantSb, sender: nil)
        self.navigationController?.pushViewController(instantSb, animated: true)
    }

    /*func GetPokIndex()-> String{
        print(pokIndex);
        print("le ppokIndex "+String(self.pokIndex));
            //self.currentPokemon!.pkmnId = 1
         //idDetail = self.currentPokemon?.pkmnId ?? 1
        //idDetail = self.currentPokemon!.pkmnId
        return String(self.idDetail)
    }*/
    
}



