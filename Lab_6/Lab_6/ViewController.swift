//
//  ViewController.swift
//  Lab_6
//
//  Created by Ali Köse on 19.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtNick: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        if txtNick.text == "a" && txtPass.text == "a"{
            performSegue(withIdentifier: "VC_Home", sender: nil)
        }
        else{
            performSegue(withIdentifier: "VC_Register", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VC_Home"{
            let homeScreen = segue.destination  as! HomeViewController
            homeScreen.nick = txtNick.text!
            homeScreen.pass = txtPass.text!
        }
    }
    
}

