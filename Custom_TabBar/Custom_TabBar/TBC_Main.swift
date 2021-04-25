//
//  TBC_Main.swift
//  Custom_TabBar
//
//  Created by Ali Köse on 20.03.2021.
//

import UIKit

class TBC_Main: UITabBarController {
    @IBOutlet weak var tbItem: UIButton!
    @IBOutlet var tbvCustom: UIView!
    @IBOutlet weak var tbItem_Two: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tbvCustom);
        tbvCustom.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tbvCustom.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tbvCustom.heightAnchor.constraint(equalTo: view.heightAnchor),
            tbvCustom.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
        
        ])
        // Do any additional setup after loading the view.
    }
    



}
