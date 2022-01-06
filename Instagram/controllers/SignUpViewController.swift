//
//  SignUpViewController.swift
//  Instagram
//
//  Created by Legenda_759 on 04/01/22.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        sceneDelegate().callHomeViewController()
    }
    
    @IBAction func onSignedIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
