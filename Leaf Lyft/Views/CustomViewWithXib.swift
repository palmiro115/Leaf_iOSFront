//
//  CustomViewWithXib.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class CustomViewWithXib: BaseView {

    var targetView: UIView!
    
    // MARK: - Load view
    
    private func loadViewFromNib() -> UIView {
        
        guard let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView else {
            return UIView()
        }
        
        return view
    }
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        targetView = loadViewFromNib()
        
        targetView.frame = bounds
        
        addSubview(targetView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        targetView.frame = bounds
    }

}
