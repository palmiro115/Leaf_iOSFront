//
//  RoundFillButton.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class RoundFillButton: CustomViewWithXib {

    @IBOutlet weak var button: UIButton!
    
    @IBInspectable var text: String = "" {
        didSet {
            
            button.setTitle(text.uppercased(), for: .normal)
            
        }
    }
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        button.layer.masksToBounds = true
        
        button.titleLabel?.font = UIFont.roundButtonFont()
        button.setTitleColor(UIColor.textButtonFillColor, for: .normal)
        button.backgroundColor = UIColor.yellowAppColor
        
        self.backgroundColor = UIColor.clear
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        button.layer.cornerRadius = bounds.height/2.0
    }

}
