//
//  SecondViewController.swift
//  lab4
//
//  Created by Ali Köse on 11.03.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    var geldata : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("2. ekran Didload çalıştı")
        lblText.text = geldata
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("2. ekran DidAppear çalıştı.")
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        // dismiss ile değil geri yapma öbür türlü yanlış oluyor.
    }
    

}
