//
//  ViewController.swift
//  Core_Data_Lab
//
//  Created by Ali Köse on 30.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var KisiListesi : [Person] = [Person(ad: "Ali", soyad: "Kose", eposta: "ali@gmail.com")]

    @IBOutlet weak var tv_KisiListesi: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Kisi Listesi"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPersonView))
        }
    @objc func addPersonView(){
        performSegue(withIdentifier: "VC_AddPerson", sender: nil)
    }


}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return KisiListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = KisiListesi[indexPath.row].Ad + " " +  KisiListesi[indexPath.row].Soyad
        return cell
    }
    
    
}

