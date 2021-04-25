//
//  ViewController.swift
//  Table_View_Lab
//
//  Created by Ali Köse on 18.04.2021.
//

import UIKit

// Ekranda Girilen metnin butona aısnca aşağıda bulunan listeye eklenmesi.
class ViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var txtTask: UITextField!
    var toDoList = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addTask(_ sender: Any) {
        if let  toDoTask  = txtTask.text{
            toDoList.append(toDoTask)
            tblView.reloadData()
        }
    }
}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            toDoList.remove(at: indexPath.row)
            tblView.reloadData()
        }
    }
    
    
}

