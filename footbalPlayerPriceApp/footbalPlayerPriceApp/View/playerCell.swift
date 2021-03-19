//
//  playerCell.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/20.
//

import UIKit

class playerCell: UICollectionViewCell {
    
    @IBOutlet weak var playerImage : UIImageView!
    @IBOutlet weak var playerName : UILabel!
    @IBOutlet weak var playerPrice : UILabel!
    
    func updateViews(player : Player){
        playerImage.image = UIImage(named: player.imageName )
        playerName.text = player.name
        playerPrice.text = player.price
    }
    
}
