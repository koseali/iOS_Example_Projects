//
//  ViewController.swift
//  PickerView
//
//  Created by Ali Köse on 17.04.2021.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
    var liste = ["Eleman 1","Eleman 2","Eleman 3","Eleman 4","Eleman 5","Eleman 6"]
    var liste_2 = ["E2 1","E2 2","E2 3","E2 4","E2 5","E2 6"]
    var liste_3 = ["Eleman3 1","Eleman3 2","Eleman3 3","Eleman3 4","Eleman3 5","Eleman3 6"]
    @IBOutlet weak var PickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func deleteButton(_ sender: Any) {
        liste.remove(at: 0)
        PickerView.reloadAllComponents()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
        return liste.count
        }
        if component == 1 {
            return liste_2.count
        }
        return liste_3.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if component == 0 {
            return NSAttributedString(string: liste[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.green])
        }
        if component == 1 {
            return NSAttributedString(string: liste_2[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.green])

        }
        return NSAttributedString(string: liste_3[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.green])

        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print(liste[row])
        }
        if component == 1 {
            print(liste_2[row])
        }
            print(liste_3[row])
        
    }
    
    
}
