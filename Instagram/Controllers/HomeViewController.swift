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
                
        initViews()
        
    }
    
    func initViews() {
        addBarItemForNavigation()
    }
    
    func addBarItemForNavigation() {
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "Instagram"
    }

    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped() {
        
    }

}
