//
//  ViewController.swift
//  CollectionView
//
//  Created by Ali Köse on 20.04.2021.
//

import UIKit

class ViewController: UIViewController {
    var liste = ["S1" , "Selam" , "Ben" , "Ali", "Sen" , "Kimsin"]
    @IBOutlet weak var cvc_Main: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cvc_Main.register(UINib(nibName: "CVC_Cell", bundle: nil), forCellWithReuseIdentifier: "CVC_Cell")
        cvc_Main.collectionViewLayout = ColumnFlowLayout(sutunSayisi: 1, minSutunAraligi: 20, minSatirAraligi: 20)
    }
}
extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return liste.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVC_Cell", for: indexPath) as! CVC_Cell
        cell.lblText.text = liste[indexPath.row]
        return cell
    }
    
}

