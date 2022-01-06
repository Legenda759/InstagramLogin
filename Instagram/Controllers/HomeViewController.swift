//
//  HomeViewController.swift
//  Instagram
//
//  Created by Legenda_759 on 06/01/22.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
    }
    
    


    @IBAction func LogOutTapped(_ sender: Any) {
        sceneDelegate().callSignInViewController()
    }
    

}
