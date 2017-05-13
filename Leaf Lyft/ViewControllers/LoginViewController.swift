//
//  LoginViewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: RoundFillButton!
    @IBOutlet weak var signUpButton: RoundBorderButton!
    
    private var _keyboardBehaviour: KeyboardBehaviour!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        
        _keyboardBehaviour = KeyboardBehaviour(self.view);
        _keyboardBehaviour.addObserver()
        
        // Action
        loginButton.button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        signUpButton.button.addTarget(self, action: #selector(signUpAction), for: .touchUpInside)
    }
    
    
    // MARK: - Action
    
    func loginAction() {
        
        
        if let enterController = self.enterViewContriller() {
            
            enterController.setScreenImage(self.captureScreen())
            enterController.presentController = .News
        }
        
        self.navigationController?.dismiss(animated: false, completion: nil)
        
    }
    
    func signUpAction() {
        
        self.performSegue(withIdentifier: "ShowChooseProile", sender: nil)
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
