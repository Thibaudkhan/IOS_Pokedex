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
    
    
    let list : Array<String> = ["Milk", "Honey", "Bread", "Tacos", "Tomatoes", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos", "Tacos","Milk"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
 /*       let test : String = "ntm";
        var testArrayPkmn : Array<Pokemon> = [];
        var pkmn : Pokemon;
        var i : Int = 0;
        while i < 10 {
            i += 1;
            pkmn = Pokemon(pkmnId : i, name: "test" + String(i));
            testArrayPkmn.append(pkmn);
        }
        testArrayPkmn.shuffle();
        testArrayPkmn = SortArray(pokemons: testArrayPkmn, sortType: "name", sortOrder: true)
        for pokemon in testArrayPkmn {
            print(pokemon.name);
        }
 */
        var jsonContent : Data?;
        var pokemons : Array<Pokemon> = [];
      /* var pokemon = Alamofire.request("https://trello-attachments.s3.amazonaws.com/5cc6b739765c887379627adc/5d9a165fc8efec7a2bfa8a65/x/e47275cb0fd8895e24c206860216b1c4/pokemon.json").responseString { response in
            if let JSON = response.result.value {
                print(JSON)
            }
        }*/
        
        //Reception du JSon
        let jsonParser = JsonParse.init();
        let request : DataRequest = Alamofire.request("https://trello-attachments.s3.amazonaws.com/5cc6b739765c887379627adc/5d9a165fc8efec7a2bfa8a65/x/e47275cb0fd8895e24c206860216b1c4/pokemon.json")
        //Lecture Json
        request.responseData {
            response in
            jsonContent = response.result.value;
            pokemons = jsonParser.SerializeJson(jsonData: jsonContent);
            
            
            pokemons.shuffle();
            for pkmn in pokemons {
                print(pkmn.name);
            }
            pokemons = SortArray(pokemons: pokemons, sortType: "name", sortOrder: true);
            for pkmn in pokemons {
                print(pkmn.name);
            }
            //isJsonRecieved = true;
        }
        

        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return cell
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



