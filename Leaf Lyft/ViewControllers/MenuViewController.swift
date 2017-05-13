//
//  SideMenuViewController.swift
//  Leaf Lyft
//
//  Created by developer on 17.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

enum MenuItemType {
    case Profile
    case Order
    case Shop
    case Chat
    case News
    case Vip
    case Delivery
    case Goals
}

class MenuItem: NSObject {
    
    var type: MenuItemType = .Profile
    var name = ""
    
    func icon() -> String {
        
        switch type {
        case .Profile:
            return "ic-menu-profile"
        case .Order:
            return "ic-menu-basket"
        case .Shop:
            return "ic-menu-shop"
        case .Chat:
            return "ic-menu-chat"
        case .News:
            return "ic-menu-news"
        case .Vip:
            return "ic-menu-vip"
        case .Delivery:
            return "ic-menu-marker"
        case .Goals:
            return "ic-menu-goal"
        }
    }
    
}

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [MenuItem]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Table
        self.tableView.contentInset = .zero
        self.tableView.scrollIndicatorInsets = .zero
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.backgroundColor = UIColor.clear
        
        // View
        self.view.backgroundColor = UIColor.viewControllerBgColor
        
        // Cell
        self.tableView.register(UINib(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuTableViewCell")
        
        var item = MenuItem()
        item.type = .Profile;
        item.name = "Profile"
        items.append(item)
        
        item = MenuItem()
        item.type = .Order;
        item.name = "Make order"
        items.append(item)
        
        item = MenuItem()
        item.type = .Shop;
        item.name = "Shop"
        items.append(item)
        
        item = MenuItem()
        item.type = .Chat;
        item.name = "Chat"
        items.append(item)
        
        item = MenuItem()
        item.type = .News;
        item.name = "News"
        items.append(item)
        
        item = MenuItem()
        item.type = .Vip;
        item.name = "VIP Membership"
        items.append(item)
        
        item = MenuItem()
        item.type = .Delivery;
        item.name = "Delivery status"
        items.append(item)
        
        item = MenuItem()
        item.type = .Goals;
        item.name = "Our Goals"
        items.append(item)
        
    }
    
    
    // MARK: - Action
    
    @IBAction func closeAction() {
        
        self.sideMenuViewController.closeMenu(animated: true, completion: nil)
        
    }
    
    // MARK: - UITableViewDataSource -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell", for: indexPath) as! MenuTableViewCell
        
        let item = items[indexPath.row]
        
        cell.iconView.image = UIImage(named: item.icon())
        cell.nameLabel.text = item.name
        
        return cell
        
    }
    
    // MARK: - UITableViewDelegate -
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        
        if item.type == .Shop || item.type == .Order {
            
            if let mainController = self.sideMenuViewController.mainViewController as? UINavigationController {
                
                let shopStoryboard = UIStoryboard(name: "Shop", bundle: nil)
                
                let shopVC: ShopViewController = shopStoryboard.instantiateInitialViewController() as! ShopViewController
                shopVC.title = item.type == .Shop ? "Apparel and accessories" : "Place a order for delivery"
                self.sideMenuViewController.closeMenu(animated: true, completion: { (success) in
                    
                    mainController.pushViewController(shopVC, animated: true)
                })
                
            }
            
        }
        
        if item.type == .Chat {
            
            if let mainController = self.sideMenuViewController.mainViewController as? UINavigationController {
                
                let storyboard = UIStoryboard(name: "Chat", bundle: nil)
                
                let VC: MessagesViewController = storyboard.instantiateInitialViewController() as! MessagesViewController

                self.sideMenuViewController.closeMenu(animated: true, completion: { (success) in
                    
                    mainController.pushViewController(VC, animated: true)
                })
                
            }
            
        }
        
        if item.type == .Goals {
            
            if let mainController = self.sideMenuViewController.mainViewController as? UINavigationController {
                
                let storyboard = UIStoryboard(name: "Text", bundle: nil)
                
                let VC: TextViewController = storyboard.instantiateInitialViewController() as! TextViewController
                
                VC.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                
                self.sideMenuViewController.closeMenu(animated: true, completion: { (success) in
                    
                    mainController.pushViewController(VC, animated: true)
                })
                
            }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = UIColor.clear
    }

}
