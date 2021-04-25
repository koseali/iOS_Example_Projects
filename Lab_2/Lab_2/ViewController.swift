//
//  ViewController.swift
//  Lab_2
//
//  Created by Ali Köse on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNick: UITextField!
    @IBOutlet weak var lblPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSignIn(_ sender: Any) {
        if lblNick.text?.isEmpty == true || lblPass.text == ""{
            print("Bos bırakılamaz.")
        }
        else{
            if lblNick.text == "a" && lblPass.text == "b"{
                print("basarili giris.")
            }
            else{
                print("Gecersiz hesap.")
            }
        }
    }
    
}

