//  ViewController.swift
//  pokedex
//
//  Created by Guiock Anthony on 07/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFld: UITextField!
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var submitBtn: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let test : String = "ntm";
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
        
        // Do any additional setup after loading the view, typically from a nib.
        
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



