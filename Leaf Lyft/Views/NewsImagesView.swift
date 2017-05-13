//
//  NewsImagesView.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class NewsImagesView: BaseView {
    
    var images: [UIImage]!
    
    
    // MARK: - Init
    
    override func commonInit() {
        super.commonInit()
        
        self.backgroundColor = UIColor.newsBgColor
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setImages(images, parentWidth: self.bounds.width)
    }

    
    func setImages(_ img: [UIImage], parentWidth width: CGFloat) {
        
        images = img
        
        for v in self.subviews {
            v.removeFromSuperview()
        }
        
        let count = images.count
        
        var w = width
        var margin: CGFloat = 0.0
        
        if count == 2 {
            margin = 6.0
            w = (width - margin * 3.0)/2.0
        }
        
        let h = NewsImagesView.heightWithCount(count)
        
        for i in 0..<count {
            
            let imageView = UIImageView(image: images[i])
            imageView.contentMode = .scaleAspectFill
            
            self.addSubview(imageView)
            
            imageView.frame = CGRect(x: margin, y: 0.0, width: w, height: h)
            
            margin = w + margin * 2.0
            
        }
        
    }
    

    class func heightWithCount(_ count: Int) -> CGFloat {
        
        if count == 0 {
            return 0.0
        }
        
        if count == 1 {
            return 215.0
        }
        
        if count == 2 {
            return 115.0
        }
        
        return 115.0
    }
}
