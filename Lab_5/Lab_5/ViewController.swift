//
//  ViewController.swift
//  Lab_5
//
//  Created by Ali Köse on 12.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fldCode: UITextField!
    
    @IBOutlet weak var fldNick: UITextField!
    
    @IBOutlet weak var fldPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin(_ sender: Any) {
        if fldCode.text == "123"{
            performSegue(withIdentifier: "VCtoSecond", sender: nil)
        }
        else{
            createAlert()
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCtoSecond"{
            let vc = segue.destination as! SecondViewController
            vc.nickname = fldNick.text
            vc.password = fldPass.text
    
        }
    }
    func createAlert(){
        let alert = UIAlertController(title: "Wrong Code", message: "try to find code", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    @IBAction func btnStoryLogin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        if fldCode.text == "123" {
            vc.nickname = fldNick.text
            vc.password = fldPass.text
            present(vc, animated: true, completion: nil)
        }
        else{
            createAlert()
        }
    }
    
}

