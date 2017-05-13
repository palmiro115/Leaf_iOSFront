//
//  NewsViewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

protocol MenuNavBarProtocol {
    
    func getNavBar() -> NavBarView
    
}

class NewsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, MenuNavBarProtocol {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navBarView: NavBarView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Table
        self.tableView.contentInset = .zero
        self.tableView.scrollIndicatorInsets = .zero
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.backgroundColor = UIColor.listBgColor
        
        // View
        self.view.backgroundColor = UIColor.viewControllerBgColor

        // Cell
        self.tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        
        // Nav bar
        self.navBarView.leftButton.addTarget(self, action: #selector(menuAction), for: .touchUpInside)
    }
    
    // MARK: - MenuNavBarProtocol
    
    func getNavBar() -> NavBarView {
        
        return self.navBarView
    }

    
    // MARK: - Action
    
    func menuAction() {
        
        self.sideMenuViewController.openMenu(animated: true, completion: nil)
        
    }
    
    // MARK: - UITableViewDataSource -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
        
        var avatar = UIImage(named: "user1")
        var name = "Carlos Liu"
        var time = "3m"
        var text = "Writing a new song. I was inspired by my friend who just became a father."
        var images = [UIImage(named: "news1")]
        
        if indexPath.row % 3 == 1 {
            avatar = UIImage(named: "user2")
            name = "Steven"
            time = "1h"
            text = "My favorite band Sigur Ros is coming to Taiwan next month. Anyone's up for this?"
            images = []
        }
        
        if indexPath.row % 3 == 2 {
            avatar = UIImage(named: "user3")
            name = "Betty"
            time = "2h"
            text = "Morning, Taiwan"
            images = [UIImage(named: "news2"), UIImage(named: "news3")]
        }
        
        cell.headerView.avatarView.image = avatar
        cell.headerView.nameLabel.text = name
        cell.headerView.timeLabel.text = time
        cell.headerView.textLabel.text = text
        cell.imagesView.setImages(images as! [UIImage], parentWidth: tableView.bounds.width)
        
        return cell
        
    }
    
    // MARK: - UITableViewDelegate -
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var count = 1
        
        if indexPath.row % 3 == 1 {
            count = 0
        }
        
        if indexPath.row % 3 == 2 {
            count = 2
        }
        
        let height: CGFloat = 85.0 + NewsImagesView.heightWithCount(count) + 8.0
        
        return height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = UIColor.clear
    }

}
