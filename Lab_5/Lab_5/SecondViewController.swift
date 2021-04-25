//
//  SecondViewController.swift
//  Lab_5
//
//  Created by Ali Köse on 12.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    var nickname : String?
    var password : String?
    let AdSoyad : String? = nil
    @IBOutlet weak var lblNick: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let AdSoyad  = nickname! + " " + password!
        lblNick.text = AdSoyad
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
