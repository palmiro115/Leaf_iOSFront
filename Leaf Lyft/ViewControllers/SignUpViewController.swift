//
//  SignUpViewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: RoundFillButton!
    @IBOutlet weak var photoImageView: UIImageView!
    
    private var _keyboardBehaviour: KeyboardBehaviour!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        _keyboardBehaviour = KeyboardBehaviour(self.view);
        _keyboardBehaviour.addObserver()
        
        // Setup
        photoImageView.layer.masksToBounds = true
        photoImageView.layer.borderWidth = 3.0
        photoImageView.layer.cornerRadius = 62.0
        photoImageView.layer.borderColor = UIColor.white.cgColor

        // Action
        signUpButton.button.addTarget(self, action: #selector(signUpAction), for: .touchUpInside)
    }
    
    // MARK: - Action
    
    @IBAction func backAction() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func signUpAction() {
        
        if let enterController = self.enterViewContriller() {
            
            enterController.setScreenImage(self.captureScreen())
            enterController.presentController = .News
        }
        
        self.navigationController?.dismiss(animated: false, completion: nil)
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
