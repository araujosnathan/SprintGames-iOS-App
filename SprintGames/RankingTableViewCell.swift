//
//  RankingTableViewCell.swift
//  SprintGames
//
//  Created by Nathanael on 28/05/2018.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerImg: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
