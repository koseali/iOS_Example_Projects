//
//  SecondViewController.swift
//  Table_View_Lab
//
//  Created by Ali Köse on 20.04.2021.
//

import UIKit

class SecondViewController: UIViewController {
    var personalList = [Person]()
    override func viewDidLoad() {
        super.viewDidLoad()
        personalList.append(Person(ad: "Ali", soyad: "Kose", cinsiyet: true))
        personalList.append(Person(ad: "Aylin", soyad: "Kose", cinsiyet: false))
        personalList.append(Person(ad: "Mehmet", soyad: "Kose", cinsiyet: true))
        personalList.append(Person(ad: "Azra", soyad: "Kose", cinsiyet: false))
        personalList.append(Person(ad: "Emir", soyad: "Kose", cinsiyet: true))
    }
}
extension SecondViewController : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personalList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TVC_XibLab", owner: self, options: nil)?.first as! TVC_XibLab
        cell.imgvPerson.image = UIImage(named: "female")
        if personalList[indexPath.row].Cinsiyet == true {
            cell.imgvPerson.image = UIImage(named: "male")
        }
        cell.lblName.text = personalList[indexPath.row].Ad + " " + personalList[indexPath.row].Soyad
        return cell
    }
    
    
}
