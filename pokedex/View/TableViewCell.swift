//
//  TableViewCell.swift
//  pokedex
//
//  Created by Roussel Thibaud on 09/10/2019.
//  Copyright © 2019 Guiock Anthony. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class TableViewCell: UITableViewCell {
    @IBOutlet weak var pokeName: UILabel!
    @IBOutlet weak var pokeId: UILabel!
    @IBOutlet weak var pokeImage: UIImageView!
    
    var cellIndex : Int = 0;
    var viewModel : TableViewCellModel?{
        didSet {
            cellIndex = viewModel!.cellIndex ;
            pokeName.text = viewModel?.pokeName;
            pokeId.text = viewModel?.pokeId;
            pokeImage?.image ;//= viewModel!.pokeImage;
        }
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        pokeName.text = nil;
        pokeId.text = nil;
        Alamofire.request(pokeImage?.image as! URLConvertible, method: .get).responseImage { response in
            guard let urlImage = response.result.value else {
                // Handle error
                return
            }
            self.pokeImage?.image = urlImage// Do stuff with your image
        }
        //pokeImage.text = nil;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    

}
