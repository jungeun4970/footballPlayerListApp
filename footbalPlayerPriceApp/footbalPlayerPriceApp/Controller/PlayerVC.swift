//
//  PlayerVC.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/19.
//

import UIKit

class PlayerVC: UIViewController {

    @IBOutlet weak var playersView : UICollectionView!
    private(set) public var players = [Player]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playersView.delegate = self
        playersView.dataSource = self
        
    }
    
    func initPlayers( continent : Continent){
        players = DataService.instance.getPlayers(forContinentName: continent.title)
        navigationItem.title = continent.title
    }
    
}

extension PlayerVC : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        players.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as? playerCell{
            let player = players[indexPath.row]
            cell.updateViews(player: player)
            return cell
        }else{
            return playerCell()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing: CGFloat = 10
        let textAreaHeight: CGFloat = 10
            
        let width: CGFloat = (collectionView.bounds.width - itemSpacing) / 2
        let height: CGFloat = width * 10/7 + textAreaHeight
        return CGSize(width: width, height: height)
    }
    
}
