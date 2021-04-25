//
//  ViewController.swift
//  TableViewController
//
//  Created by Ali Köse on 17.04.2021.
//

import UIKit


class ViewController: UIViewController {
    let liste = createList(sayi: 44)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return liste.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = liste[indexPath.row]
        return cell
    }
}
