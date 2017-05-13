//
//  NavBarView.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class NavBarView: CustomViewWithXib {
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!

    @IBInspectable var leftImage: UIImage = UIImage() {
        didSet {
            
            leftButton.setImage(leftImage, for: .normal)
            
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
            
            titleLabel.text = title
            
        }
    }
    
    @IBInspectable var rightImage: UIImage = UIImage() {
        didSet {
            
            rightButton.setImage(rightImage, for: .normal)
            
        }
    }
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        titleLabel.font = UIFont.navBarTitleFont()
        titleLabel.textColor = UIColor.defaultTextColor
        
        self.backgroundColor = UIColor.clear
        
    }

}
