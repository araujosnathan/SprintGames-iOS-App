//
//  Ranking.swift
//  SprintGames
//
//  Created by Nathanael on 28/05/2018.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class Ranking: UIViewController {

    
    @IBOutlet weak var tableRanking: UITableView!
    
    let players = [("Bruno"),("Darling"),("David"),("Gabriel"),("Igor"),("Nathanael"),("Toyota"),("Vinícius")]
    let playersMedal = [0,0,0,0,0,5,0,0]
    let controlImg = UIImage(named: "gameControll")
    let medalImg = UIImage(named: "medalGold")
    let medalImgEmpy = UIImage(named: "medalEmpty")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.tableRanking.delegate = self as? UITableViewDelegate
        self.tableRanking.dataSource = self as? UITableViewDataSource
        
        self.tableRanking.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "tableRanking")
        
        tableRanking.separatorStyle = UITableViewCellSeparatorStyle.none
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableRanking.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension Ranking : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let names = players[indexPath .row]
        let medals = playersMedal[indexPath .row]
        let cell=tableRanking.dequeueReusableCell(withIdentifier: "cellRanking", for: indexPath) as! RankingTableViewCell
        
        var listModal = [cell.star1, cell.star2, cell.star3, cell.star4, cell.star5, cell.star6, cell.star7, cell.star8, cell.star9, cell.star10]
        print(playersMedal.count)
        for i in 0..<listModal.count
        {
            if (i < medals)
            {
              listModal[i]?.image = medalImg
            }
            
            else
            {
                listModal[i]?.image = medalImgEmpy
            }
            
        }
    
        
        cell.playerImg.image=controlImg
        cell.playerName.text = names

        return cell
    }
}

extension Ranking : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableRanking.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

