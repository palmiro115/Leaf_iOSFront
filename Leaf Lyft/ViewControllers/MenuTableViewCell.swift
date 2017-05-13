//
//  SideMenuTableViewCell.swift
//  Leaf Lyft
//
//  Created by developer on 17.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameLabel.font = UIFont.defaultTextFont()
        nameLabel.textColor = UIColor.defaultTextColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
