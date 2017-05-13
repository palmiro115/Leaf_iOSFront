//
//  ChatTableViewCell.swift
//  Leaf Lyft
//
//  Created by developer on 31.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarView.clipsToBounds = true
        avatarView.layer.cornerRadius = 27.0
        
        nameLabel.font = UIFont.listNameFont()
        nameLabel.textColor = UIColor.defaultTextColor
        
        timeLabel.font = UIFont.listTimeFont()
        timeLabel.textColor = UIColor.secondTextColor
        
        messageLabel.font = UIFont.defaultTextFont()
        messageLabel.textColor = UIColor.defaultTextColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func heightCellForText(_ text: String, widthCell: CGFloat) -> CGFloat {
        
        let size = text.boundingRect(with: CGSize(width: widthCell - 86.0, height: 999.0), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.defaultTextFont()], context: nil)
        
        let nameSize = " ".boundingRect(with: CGSize(width: widthCell, height: 999.0), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.listNameFont()], context: nil)
        
        var h: CGFloat = 15.0 + nameSize.height + 8.0 + size.height + 10.0
        
        if h < 74.0 {
            h = 74.0
        }
        
        return h
    }
    
}
