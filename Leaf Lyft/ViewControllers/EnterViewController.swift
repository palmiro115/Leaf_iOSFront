//
//  EnterViewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit
import TWTSideMenuViewController


enum PresentController: Int {
    case Auth = 0
    case News
}

class EnterViewController: UIViewController, TWTSideMenuViewControllerDelegate {
    
    @IBOutlet var screenView: UIImageView!
    
    var presentController: PresentController = .Auth
    
    var containerMenuViewController: TWTSideMenuViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if presentController == .Auth {
            
            self.performSegue(withIdentifier: "AuthPresent", sender: nil)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if presentController == .News {
            
            let menuStoryboard = UIStoryboard(name: "Menu", bundle: nil)
            let newsStoryboard = UIStoryboard(name: "News", bundle: nil)
            
            let menuVC: MenuViewController = menuStoryboard.instantiateInitialViewController() as! MenuViewController
            let newsVC: UINavigationController = newsStoryboard.instantiateInitialViewController() as! UINavigationController
            
            containerMenuViewController = TWTSideMenuViewController(menuViewController: menuVC, mainViewController: newsVC)
            containerMenuViewController.zoomScale = 0.8
            containerMenuViewController.shadowColor = nil
            containerMenuViewController.delegate = self;
            containerMenuViewController.modalTransitionStyle = .crossDissolve
            
            self.present(containerMenuViewController, animated: true, completion: nil)
        }
    }
    
    // MARK: - Screen
    
    func setScreenImage(_ image: UIImage) {
        screenView.isHidden = false
        screenView.image = image
    }
    
    // MARK: - Get Nav Bar
    
    func navBarForMainController() -> NavBarView? {
        
        guard let navVC = containerMenuViewController.mainViewController as? UINavigationController else {
            return nil
        }
        
        guard let menuNavBarVC = navVC.viewControllers.first as? MenuNavBarProtocol else {
            return nil
        }
        
        return menuNavBarVC.getNavBar()
        
    }
    
    // MARK: - TWTSideMenuViewControllerDelegate
    
    func sideMenuViewControllerDidOpenMenu(_ sideMenuViewController: TWTSideMenuViewController!) {
        
    }
    
    func sideMenuViewControllerWillOpenMenu(_ sideMenuViewController: TWTSideMenuViewController!) {
        
        if let navbar = navBarForMainController() {
            
            navbar.leftButton.isHidden = true
        }
        
    }
    
    func sideMenuViewControllerDidCloseMenu(_ sideMenuViewController: TWTSideMenuViewController!) {
        
    }
    
    func sideMenuViewControllerWillCloseMenu(_ sideMenuViewController: TWTSideMenuViewController!) {
        
        if let navbar = navBarForMainController() {
            
            navbar.leftButton.isHidden = false
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
