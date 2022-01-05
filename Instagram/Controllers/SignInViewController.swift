//
//  SignInViewController.swift
//  Instagram
//
//  Created by Legenda_759 on 04/01/22.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onSignedIn(_ sender: Any) {
    }
    
    @IBAction func onSignedUp(_ sender: Any) {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        self.present(nc, animated: true, completion: nil)
    }
    
}
