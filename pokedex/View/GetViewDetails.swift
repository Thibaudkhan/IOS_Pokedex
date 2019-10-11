//
//  GetViewDetails.swift
//  pokedex
//
//  Created by Roussel Thibaud on 10/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import UIKit
import Alamofire


import UIKit

class GetViewDetails: UIViewController {
    @IBOutlet weak var pokDetImg: UIImageView!
    @IBOutlet weak var pokDetDesc: UILabel!
    //@IBOutlet weak var pokTableLbl: UILabel!
    @IBOutlet weak var pokDetName: UILabel!
    @IBOutlet weak var pokDetId: UILabel!
    
    // var theIndex2 = Int()
    var theName = String()
    var theDesc = String()
    var theId = Int()
    var theImg = UIImage()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("More Details")
        print(theName)
        pokDetId.text = "# "+String(theId)
        pokDetName.text = theName
        pokDetDesc.text = theDesc
        //pokDetImg.image = theImg
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
