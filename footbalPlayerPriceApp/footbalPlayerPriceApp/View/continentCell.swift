//
//  continentCell.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/19.
//

import UIKit

class continentCell: UITableViewCell {

    @IBOutlet weak var continentImage : UIImageView!
    @IBOutlet weak var continentTitle : UILabel!
    
    func updateViews(continent : Continent){
        continentTitle.layer.cornerRadius = 20.0
        continentTitle.text = continent.title
        continentImage.image = UIImage(named: continent.imageName)
    }
    
}
