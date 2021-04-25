//
//  ViewController.swift
//  Lab_3
//
//  Created by Ali Köse on 11.03.2021.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        createAlert()
    }
    
    
    func createAlert(){
        
        let alert = UIAlertController(title: "Alert Acildi", message: "Mesajı", preferredStyle: .alert)
        let action = UIAlertAction(title: "Cancel", style: .cancel){
            UIAlertAction in
            print("Cancela Basıldı.")
        }
       alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default){
            UIAlertAction in
            print("Cancela Basıldı.")
        })
        
        alert.addAction(UIAlertAction(title: "Selam", style: .default){
            UIAlertAction in
            print("Cancela Basıldı.")
        })
        present(alert, animated: true, completion: nil)
    }
    


}

