//
//  TwoColumnFlowLayout.swift
//  Leaf Lyft
//
//  Created by developer on 31.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class TwoColumnFlowLayout: UICollectionViewFlowLayout {
    
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 5
        minimumLineSpacing = 10
        scrollDirection = .vertical
    }
    
    override var itemSize: CGSize {
        set {
            
        }
        get {
            let numberOfColumns: CGFloat = 2
            
            let itemWidth = (self.collectionView!.frame.width - 30.0) / numberOfColumns
            
            return CGSize(width: itemWidth, height: 264.0)
        }
    }

}
