//
//  HomeViewController.swift
//  Instagram
//
//  Created by Legenda_759 on 06/01/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        initViews()
        
    }
    
//    MARK: - Methods
    
    func initViews() {
        tableView.dataSource = self
        tableView.delegate = self
        addBarItemForNavigation()
        items.append(Post(fullName: "Marvel", user_img: "Marvel_Logo", post_img: "no_way_to_home",image2: "loki"))
        items.append(Post(fullName: "Netflix", user_img: "Netflix_Logo", post_img: "Bella_chao",image2: "squidGame"))
        items.append(Post(fullName: "Marvel", user_img: "Marvel_Logo", post_img: "no_way_to_home",image2: "loki"))
        items.append(Post(fullName: "Netflix", user_img: "Netflix_Logo", post_img: "Bella_chao",image2: "squidGame"))
        items.append(Post(fullName: "Marvel", user_img: "Marvel_Logo", post_img: "no_way_to_home",image2: "loki"))
        items.append(Post(fullName: "Netflix", user_img: "Netflix_Logo", post_img: "Bella_chao",image2: "squidGame"))
        items.append(Post(fullName: "Marvel", user_img: "Marvel_Logo", post_img: "no_way_to_home",image2: "loki"))
        items.append(Post(fullName: "Netflix", user_img: "Netflix_Logo", post_img: "Bella_chao",image2: "squidGame"))
        items.append(Post(fullName: "Marvel", user_img: "Marvel_Logo", post_img: "no_way_to_home",image2: "loki"))
        items.append(Post(fullName: "Netflix", user_img: "Netflix_Logo", post_img: "Bella_chao",image2: "squidGame"))
    }
    
    func addBarItemForNavigation() {
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        
        title = "Instagram"
    }
    
//    MARK: - Actions

    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped() {
        
    }
    
//    MARK: - table view
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item =  items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.fullName
        cell.profileImage.image = UIImage(named: item.user_img!)
        cell.image1.image = UIImage(named: item.post_img!)
        cell.image2.image = UIImage(named: item.image2!)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 420
    }

}
