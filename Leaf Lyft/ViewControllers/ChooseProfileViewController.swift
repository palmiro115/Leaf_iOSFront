//
//  ChooseProfileViewController.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class ChooseProfileViewController: UIViewController {
    
    @IBOutlet weak var vipButton: RoundFillButton!
    @IBOutlet weak var standartButton: RoundBorderButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Action
        vipButton.button.addTarget(self, action: #selector(vipAction), for: .touchUpInside)
        standartButton.button.addTarget(self, action: #selector(standartAction), for: .touchUpInside)
    }
    
    // MARK: - Action
    
    func vipAction() {
        
    }
    
    func standartAction() {
        self.performSegue(withIdentifier: "SignUpProile", sender: nil)
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
