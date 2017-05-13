//
//  UIViewController+EnterVuewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func enterViewContriller() -> EnterViewController? {
        
        if let navVC = self.navigationController {
            
            if let enterVC = navVC.presentingViewController as? EnterViewController {
                
                return enterVC
            }
            
        }
        
        if let enterVC = self.presentingViewController as? EnterViewController {
            
            return enterVC
        }
        
        
        return nil
        
    }
}
