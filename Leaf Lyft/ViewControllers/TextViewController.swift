//
//  TextViewController.swift
//  Leaf Lyft
//
//  Created by developer on 01.04.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var navBarView: NavBarView!
    
    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Text
        textView.textContainerInset = UIEdgeInsets(top: 12.0, left: 12.0, bottom: 30.0, right: 12.0)
        textView.backgroundColor = UIColor.listBgColor
        textView.textColor = UIColor.defaultTextColor
        textView.font = UIFont.defaultTextFont()
        textView.text = text
        
        // View
        self.view.backgroundColor = UIColor.viewControllerBgColor
        
        // Nav bar
        self.navBarView.leftButton.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textView.isScrollEnabled = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textView.isScrollEnabled = true
    }

    // MARK: - Action
    
    func backAction() {
        
        self.navigationController?.popViewController(animated: true)
        
    }

}
