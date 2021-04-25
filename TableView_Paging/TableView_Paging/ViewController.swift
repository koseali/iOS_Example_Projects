//
//  ViewController.swift
//  TableView_Paging
//
//  Created by Ali Köse on 21.04.2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tbv_Sayfa: UITableView!
    var liste = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
            addElement()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = liste[indexPath.row] + " \(indexPath.row)"
        return cell
    }
    func addElement(){
        let elemanListesi = ["Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman","Eleman",]
        liste.append(contentsOf: elemanListesi)
        tbv_Sayfa.reloadData()
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if ((scrollView.contentOffset.y + scrollView.frame.size.height) > (scrollView.contentSize.height * 0.98)){
            addElement()
        }
    }
}

