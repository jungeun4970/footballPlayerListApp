//
//  continentVC.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/19.
//

import UIKit

class continentVC: UIViewController {

    @IBOutlet weak var continentTable : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        continentTable.dataSource = self
        continentTable.delegate = self
    }
}

extension continentVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getContinents().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "continentCell", for: indexPath) as? continentCell{
            let continent = DataService.instance.getContinents()[indexPath.row]
            cell.updateViews(continent: continent)
            return cell
        }else{
            return continentCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height/5
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let continent = DataService.instance.getContinents()[indexPath.row]
        performSegue(withIdentifier: "goToPlayerVC", sender: continent)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let playerVC = segue.destination as? PlayerVC{
            playerVC.initPlayers(continent: sender as! Continent)
        }
    }
    
    
}
