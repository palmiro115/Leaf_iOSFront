//
//  CustomTextField.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class CustomTextField: CustomViewWithXib {

    @IBOutlet weak var textField: UITextField!
    
    @IBInspectable var placeholder: String = "" {
        didSet {
            
            textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName: UIColor.defaultTextColor])
        }
    }
    
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        textField.textColor = UIColor.defaultTextColor
        textField.font = UIFont.textFieldFont()
        
        self.backgroundColor = UIColor.clear
        
    }

}
