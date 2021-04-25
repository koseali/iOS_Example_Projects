//
//  ViewController.swift
//  TableView_SearchBar
//
//  Created by Ali Köse on 21.04.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    @IBOutlet weak var tftSearch: UITextField!
    
    @IBOutlet weak var sb_search: UISearchBar!
    @IBOutlet weak var tv_Aramali: UITableView!
    var liste : [String] = ["Ali", "Ayse","Aylin","Azra","Buse","Berna","Cihan","Celal"]
    var filtreListe : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        filtreListe.append(contentsOf: liste)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtreListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = filtreListe[indexPath.row]
        return cell
    }
    
     func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtreListe = searchText.isEmpty ? liste : filtreListe.filter({ (yazi) -> Bool in
            return yazi.range(of: searchText, options: .caseInsensitive) != nil
        })
        tv_Aramali.reloadData()
    }
    // iki aramada aynı işi yapar.
    @IBAction func Custom_Search(_ sender: Any) {
        filtreListe.removeAll()
        if tftSearch.text!.isEmpty{
            filtreListe.append(contentsOf: liste)
        }
        else{
            for eleman in liste {
                if eleman.range(of: tftSearch.text!,options: .caseInsensitive) != nil{
                    filtreListe.append(eleman)
                }
            }
        }
   
        tv_Aramali.reloadData()
    }

}

