//
//  ViewController.swift
//  DatePicker
//
//  Created by Ali Köse on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.setValue(UIColor.red, forKey: "textColor")
        datePicker.minimumDate = Date()
        datePicker.date = Date()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeValue(_ sender: Any) {
        let time = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "dd.MM.yyyy HH:mm"
        print(dateformatter.string(from: time))
    }
    
}

