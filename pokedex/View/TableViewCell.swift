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

class TableViewCell: UITableViewCell
{
    @IBOutlet weak var pokeName: UILabel!
    @IBOutlet weak var pokeId: UILabel!
    @IBOutlet weak var pokeImage: UIImageView!
    
    //var viewController = ViewController()
    //var tabPok : [TableViewCellModel] = []
    
    var cellIndex : Int = 0
    
    var viewModel: TableViewCellModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            
            cellIndex = viewModel.cellIndex
            pokeName.text = viewModel.pokeName
            pokeId.text = viewModel.pokeId
            
            ImageDownloader.download(imageURLString: viewModel.pokeImage) { [weak self] result in
                if self?.cellIndex == viewModel.cellIndex {
                    switch result {
                    case .success(let image) :
                        self?.pokeImage.image = image
                    case .failure:
                        self?.pokeImage.image = UIImage(named: "Gyarados")
                    }
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        //let url = URL(string: "../pokedex/gyarados")
        pokeImage.image = nil
        pokeName.text = nil
        pokeId.text = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    

}
