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
    let players = [("Bruno"),("Darling"),("Gabriel"),("Igor"),("Nathanael"),("Toyota"),("Vinícius")]

     let controlImg = UIImage(named: "gameControll")
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Ranking : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let names = players[indexPath .row]
        let cell=tableRanking.dequeueReusableCell(withIdentifier: "cellRanking", for: indexPath) as! RankingTableViewCell
        
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

