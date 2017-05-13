//
//  ShopViewController.swift
//  Leaf Lyft
//
//  Created by developer on 30.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var navBarView: NavBarView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Table
        self.collectionView.contentInset = UIEdgeInsets(top: 7.0, left: 10.0, bottom: 7.0, right: 10.0)
        self.collectionView.scrollIndicatorInsets = .zero
        self.automaticallyAdjustsScrollViewInsets = false
        self.collectionView.backgroundColor = UIColor.listBgColor
        
        // View
        self.view.backgroundColor = UIColor.viewControllerBgColor
        
        // Cell
        self.collectionView.register(UINib(nibName: "ShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShopCollectionViewCell")
        
        // Nav bar
        self.navBarView.leftButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        self.navBarView.titleLabel.text = self.title
    }
    
    // MARK: - Action
    
    func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }

    
    // MARK: - UICollectionViewDataSource -
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 8;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopCollectionViewCell", for: indexPath) as! ShopCollectionViewCell
        
        var photo = UIImage(named: "shop1")
        var name = "Off shoulder dress grey"
        var price = "$30"
        
        if indexPath.item % 4 == 1 {
            photo = UIImage(named: "shop2")
            name = "Off shoulder dress black"
            price = "$32"
        }
        
        if indexPath.item % 4 == 2 {
            photo = UIImage(named: "shop3")
            name = "Knitted jumper dress grey"
            price = "$29"
        }
        
        if indexPath.item % 4 == 3 {
            photo = UIImage(named: "shop4")
            name = "Sweater dress grey marl"
            price = "$33"
        }
        
        
        cell.photoView.image = photo
        cell.nameLabel.text = name
        cell.priceLabel.text = price
        
        return cell;
        
    }
    
    // MARK: - UICollectionViewDelegate -
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        cell.backgroundColor = UIColor.clear
    }
    
}
