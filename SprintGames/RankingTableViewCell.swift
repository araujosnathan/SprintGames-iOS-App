//
//  RankingTableViewCell.swift
//  SprintGames
//
//  Created by Nathanael on 28/05/2018.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    @IBOutlet weak var star10: UIImageView!
    @IBOutlet weak var star9: UIImageView!
    @IBOutlet weak var star8: UIImageView!
    @IBOutlet weak var star7: UIImageView!
    @IBOutlet weak var star6: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star1: UIImageView!
    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
