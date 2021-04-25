//
//  ViewController.swift
//  PracticeProject
//
//  Created by Ali Köse on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {
    let saat = 10.21
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lblSecond: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Didapper açıldıktan osnra
    // viewwillappaaer görüntülenme öncesi
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        lbTitle.text = "Uygulama acilis zamanı\(getTime())"
    }
    
    

    @IBAction func btnGetTime(_ sender: Any) {
        let moment = getTime()
        lblSecond.text = "tıklama zamanı \( moment)"
    }
    
    func getTime() -> String{
        let time = Date()
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy HH:mm:ss"
        
        return df.string(from: time)
    }
}

