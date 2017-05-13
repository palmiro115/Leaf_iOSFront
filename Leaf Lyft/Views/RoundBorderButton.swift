//
//  RoundBorderButton.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class RoundBorderButton: CustomViewWithXib {

    @IBOutlet weak var button: UIButton!
    
    @IBInspectable var text: String = "" {
        didSet {
            
            button.setTitle(text.uppercased(), for: .normal)
            
        }
    }
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        button.clipsToBounds = true
        button.layer.borderWidth = 3.0
        button.layer.borderColor = UIColor.yellowAppColor.withAlphaComponent(0.74).cgColor
        
        button.titleLabel?.font = UIFont.roundButtonFont()
        button.setTitleColor(UIColor.textButtonBorderColor, for: .normal)
        button.backgroundColor = UIColor.clear
        
        self.backgroundColor = UIColor.clear
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        button.layer.cornerRadius = bounds.height/2.0
    }

}
