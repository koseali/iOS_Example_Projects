//
//  HomeViewController.swift
//  Lab_6
//
//  Created by Ali Köse on 19.03.2021.
//

import UIKit

class HomeViewController: UIViewController {
    var nick : String = ""
    var pass : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
       // navigationController?.isNavigationBarHidden = true
        print("isim : \(nick)")
        print("password: \(pass)")
        navigationController?.viewControllers.remove(at: 0)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let nav = UINavigationController()
        nav.setNavigationBarHidden(true, animated: true)
    }
    
    
    


}
