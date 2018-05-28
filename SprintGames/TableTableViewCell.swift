//
//  TableTableViewCell.swift
//  SprintGames
//
//  Created by Nathanael on 27/05/2018.
//  Copyright © 2018 Nathan. All rights reserved.
//

import UIKit

class TableTableViewCell: UITableViewCell {
    @IBOutlet weak var sprintName: UILabel!
    
    @IBOutlet weak var winnerName: UILabel!
    @IBOutlet weak var winTitle: UILabel!
    @IBOutlet weak var line: UIImageView!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
