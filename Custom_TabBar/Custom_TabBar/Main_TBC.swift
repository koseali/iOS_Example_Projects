//
//  Main_TBC.swift
//  Custom_TabBar
//
//  Created by Ali Köse on 20.03.2021.
//

import UIKit

class Main_TBC: UITabBarController {

    @IBOutlet var tbvOzel: UIView!
    @IBOutlet weak var V1: UIView!
    @IBOutlet weak var V2: UIView!
    @IBOutlet weak var imgFav: UIImageView!
    @IBOutlet weak var imgProfile: UIImageView!
    let Secilidegil = UIColor(named: "secilidegil")
    let Secili  = UIColor(named: "secili")
    override func viewDidLoad() {
        super.viewDidLoad()
        tbvOzel.backgroundColor = .white
        view.addSubview(tbvOzel)
        tbvOzel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tbvOzel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 44),
            tbvOzel.heightAnchor.constraint(equalToConstant: 120),
            tbvOzel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tbvOzel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
        tabBar.isHidden = true

    }
    
    @IBAction func TabDegistir(_ sender: Any) {
        Degistir(tag: (sender as! UIButton).tag)
    }
    func  Degistir( tag : Int)   {
        switch tag{
        case 0:
            imgFav.image = UIImage(named:"cards-heart")
            V1.backgroundColor = Secili
            imgProfile.image = UIImage(named: "account-outline")
            V2.backgroundColor = Secilidegil
        case 1 :
            imgProfile.image = UIImage(named: "account")
            V2.backgroundColor = Secili
            imgFav.image = UIImage(named:"heart-outline")
            V1.backgroundColor = Secilidegil
        default:
            imgFav.image = UIImage(named:"cards-heart")
            V1.backgroundColor = Secili

        }
        selectedIndex = tag
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
