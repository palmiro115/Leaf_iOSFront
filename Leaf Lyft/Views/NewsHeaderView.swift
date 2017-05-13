//
//  NewsHeaderView.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class NewsHeaderView: CustomViewWithXib {
    
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var shareLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!

    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        avatarView.clipsToBounds = true
        avatarView.layer.cornerRadius = 27.0
        
        nameLabel.font = UIFont.listNameFont()
        nameLabel.textColor = UIColor.defaultTextColor
        
        timeLabel.font = UIFont.listTimeFont()
        timeLabel.textColor = UIColor.secondTextColor
        
        shareLabel.font = UIFont.listShareFont()
        shareLabel.textColor = UIColor.secondTextColor
        
        textLabel.font = UIFont.defaultTextFont()
        textLabel.textColor = UIColor.defaultTextColor
        
        self.backgroundColor = UIColor.newsBgColor
        
    }

}
