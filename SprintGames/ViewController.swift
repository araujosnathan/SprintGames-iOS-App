//
//  ViewController.swift
//  SprintGames
//
//  Created by Nathanael on 26/05/2018.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let gameNames = [("Splashy"),("Rotator"),("Chilly Snow"),("Thief"),("Twist")]
    let sprintNames = [("Sprint-5"),("Sprint-4"),("Sprint-3"),("Sprint-2"),("Sprint-1")]
    let winnerNames = [("Nathan"),("Nathan"),("Nathan"),("Nathan"),("Nathan")]
    let winnerImg = UIImage(named: "winner")
    let timeLineImg = UIImage(named: "line")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self as? UITableViewDelegate
        self.tableView.dataSource = self as? UITableViewDataSource
        
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "tableCell")
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
    }

    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let names = gameNames[indexPath .row]
        let sprints = sprintNames[indexPath .row]
        let winners = winnerNames[indexPath .row]
        let Images = winnerImg
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableTableViewCell
        
      
        cell.label.text = names
        cell.sprintName.text = sprints
        cell.sprintName.font = UIFont.boldSystemFont(ofSize: 15.0)
        cell.winTitle.text = "Vencedor"
        cell.winTitle.font = UIFont.boldSystemFont(ofSize: 15.0)
        
        cell.winnerName.text = winners
        
        if (indexPath .row == 0)
        {
            cell.lineUp.isHidden = true
        }
        else if (indexPath .row == gameNames.count - 1)
        {
            cell.line.isHidden = true
        }
//        else
//        {
//            cell.lineUp.image=timeLineImg
//            cell.line.image=timeLineImg
//        }
        
        cell.lineUp.image=timeLineImg
        cell.line.image=timeLineImg
        cell.photo.image=Images
       
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

