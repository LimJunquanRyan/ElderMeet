//
//  EventTableViewCell.swift
//  ElderMeet - No Database
//
//  Created by Lim JunQuan Ryan on 23/10/18.
//  Copyright © 2018 Ryan Lim. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var activityLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var dateTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
