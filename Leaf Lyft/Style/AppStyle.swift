//
//  AppStyle.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

// Color style

extension UIColor {
    
    class var textButtonFillColor: UIColor {
        return UIColor.black
    }
    
    class var textButtonBorderColor: UIColor {
        return UIColor.white
    }

    
    class var textFielBorderColor: UIColor {
        return UIColor.white.withAlphaComponent(0.9)
    }
    
    class var yellowAppColor: UIColor {
        return UIColor(red: 255 / 255.0, green: 191 / 255.0, blue: 0 / 255.0, alpha: 1.0)
    }
    
    class var viewControllerBgColor: UIColor {
        return UIColor.black
    }
    
    class var defaultTextColor: UIColor {
        return UIColor.white
    }
    
    class var secondTextColor: UIColor {
        return UIColor.white.withAlphaComponent(0.5)
    }
    
    class var newsBgColor: UIColor {
        return UIColor(red: 53 / 255.0, green: 53 / 255.0, blue: 56 / 255.0, alpha: 1.0)
    }
    
    class var listBgColor: UIColor {
        return UIColor(red: 31 / 255.0, green: 31 / 255.0, blue: 33 / 255.0, alpha: 1.0)
    }
    
    class var shopItemBgColor: UIColor {
        return UIColor(red: 53 / 255.0, green: 53 / 255.0, blue: 56 / 255.0, alpha: 1.0)
    }
    
}

// Text styles

extension UIFont {
    
    class func textFieldFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 19.0)!
    }
    
    class func roundButtonFont() -> UIFont {
        return UIFont(name: "AllerDisplay", size: 18.0)!
    }
    
    class func navBarTitleFont() -> UIFont {
        return UIFont(name: "Lato-Semibold", size: 18.0)!
    }
    
    class func listNameFont() -> UIFont {
        return UIFont(name: "Lato-Bold", size: 18.0)!
    }
    class func listTimeFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 16.0)!
    }
    class func listShareFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 13.0)!
    }
    class func defaultTextFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 15.0)!
    }
    class func shopNameTextFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 13.0)!
    }
    class func shopPriceTextFont() -> UIFont {
        return UIFont(name: "Lato-Regular", size: 18.0)!
    }
}
