//
//  MessagesViewController.swift
//  Leaf Lyft
//
//  Created by developer on 31.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class MessagesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        self.tableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatTableViewCell")
        
        // Nav bar
        self.navBarView.leftButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    }
    
    
    // MARK: - Action
    
    func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    // MARK: - UITableViewDataSource -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell", for: indexPath) as! ChatTableViewCell
        
        var avatar = UIImage(named: "user2")
        var name = "Steven"
        var time = "1 hours ago"
        var text = "Thanks for the good writeup. It in fact was a amusement account it."
        
        if indexPath.row % 3 == 1 {
            avatar = UIImage(named: "user2")
            name = "Betty"
            time = "2 hours ago"
            text = "Thanks for a marvelous posting! I actually enjoyed reading it, you may be a great author. I want to encourage yourself to continue your great writing, have a nice day!"
        }
        
        if indexPath.row % 3 == 2 {
            avatar = UIImage(named: "user1")
            name = "Carlos Liu"
            time = "2 hours ago"
            text = "If you are going for finest contents like I do, simply go to see this site daily since it provides quality contents, thanks"
        }
        
        cell.avatarView.image = avatar
        cell.nameLabel.text = name
        cell.timeLabel.text = time
        cell.messageLabel.text = text
        
        return cell
        
    }
    
    // MARK: - UITableViewDelegate -
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var text = "Thanks for the good writeup. It in fact was a amusement account it."
        
        if indexPath.row % 3 == 1 {
            
            text = "Thanks for a marvelous posting! I actually enjoyed reading it, you may be a great author. I want to encourage yourself to continue your great writing, have a nice day!"
        }
        
        if indexPath.row % 3 == 2 {
            
            text = "If you are going for finest contents like I do, simply go to see this site daily since it provides quality contents, thanks"
        }
        
        return ChatTableViewCell.heightCellForText(text, widthCell: tableView.bounds.width)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = UIColor.clear
    }
}
