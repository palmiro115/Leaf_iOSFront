//
//  ShopCollectionViewCell.swift
//  Leaf Lyft
//
//  Created by developer on 30.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class ShopCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        
        photoView.clipsToBounds = true
        
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 5.0
        containerView.backgroundColor = UIColor.shopItemBgColor
        
        nameLabel.font = UIFont.shopNameTextFont()
        nameLabel.textColor = UIColor.defaultTextColor
        
        priceLabel.font = UIFont.shopPriceTextFont()
        priceLabel.textColor = UIColor.defaultTextColor
        
    }

}
