//
//  ViewController.swift
//  lab4
//
//  Created by Ali Köse on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("İlk Ekran DidLoad calisti.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        print("İlk Ekran Did Appear calisti.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("ilk ekran will disappear çlaıştı")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(" İlk ekran didDisappear çalıştı")
    }
    
    @IBAction func btnSegue(_ sender: Any) {
        performSegue(withIdentifier: "VCtoSecond", sender: "Selam Kelebek.")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCtoSecond" {
            
            let vc2 = segue.destination as! SecondViewController
            vc2.geldata = sender as? String
          //  vc2.geldata = "Buradan bu sekilde de gönderile bilir."
            // Bazı durumlarda soruno luyor muş.
        
            
        }
    }
    
    @IBAction func btnIdentify(_ sender: Any) {
        let storyboard  = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "vc2") as! SecondViewController
        vc.geldata = "2. Gönderi deger."
    
        present(vc, animated: true, completion: nil)
        
    }
}

