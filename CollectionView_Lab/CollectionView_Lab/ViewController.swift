//
//  ViewController.swift
//  CollectionView_Lab
//
//  Created by Ali Köse on 21.04.2021.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    
    var Urunler : [Product] = []
// Urun Resmi , Baslıgı ,fiyati ve  Aciklaması olan urunlerin 2 sütun olarak listelenmesi

    @IBOutlet weak var cv_Urunler: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Urunler.append(Product(urunresim: "gitar", ad: "Toledo Gitar", fiyat: 749.99, aciklama: "Ozel İspanyol gitarı kılıf ve pena hediyeli"))
        Urunler.append(Product(urunresim: "baglama", ad: "Kısa Sap Bağlama", fiyat: 1499.50, aciklama: "Özel Maun Ağacı yedek tel hediyeli"))
        Urunler.append(Product(urunresim: "keman", ad: "Keman", fiyat: 500, aciklama: "Baslangıc kemanı"))
        Urunler.append(Product(urunresim: "gitar", ad: "Toledo Gitar", fiyat: 749.99, aciklama: "Ozel İspanyol gitarı kılıf ve pena hediyeli"))
        Urunler.append(Product(urunresim: "baglama", ad: "Kısa Sap Bağlama", fiyat: 1499.50, aciklama: "Özel Maun Ağacı yedek tel hediyeli"))
        Urunler.append(Product(urunresim: "keman", ad: "Keman", fiyat: 500, aciklama: "Baslangıc kemanı"))
        Urunler.append(Product(urunresim: "gitar", ad: "Toledo Gitar", fiyat: 749.99, aciklama: "Ozel İspanyol gitarı kılıf ve pena hediyeli"))
        Urunler.append(Product(urunresim: "baglama", ad: "Kısa Sap Bağlama", fiyat: 1499.50, aciklama: "Özel Maun Ağacı yedek tel hediyeli"))
        Urunler.append(Product(urunresim: "keman", ad: "Keman", fiyat: 500, aciklama: "Baslangıc kemanı"))
        Urunler.append(Product(urunresim: "gitar", ad: "Toledo Gitar", fiyat: 749.99, aciklama: "Ozel İspanyol gitarı kılıf ve pena hediyeli"))
        Urunler.append(Product(urunresim: "baglama", ad: "Kısa Sap Bağlama", fiyat: 1499.50, aciklama: "Özel Maun Ağacı yedek tel hediyeli"))
        Urunler.append(Product(urunresim: "keman", ad: "Keman", fiyat: 500, aciklama: "Baslangıc kemanı"))
        cv_Urunler.register(UINib(nibName: "CVC_Urun", bundle: nil), forCellWithReuseIdentifier: "CVC_Urun")
        cv_Urunler.collectionViewLayout = CVFL_DataFlow(sutunSayisi: 2, minSutunAraligi: 10, minSatirAraligi: 20)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Urunler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv_Urunler.dequeueReusableCell(withReuseIdentifier: "CVC_Urun", for: indexPath) as! CVC_Urun
        let urun = Urunler[indexPath.row]
        cell.iv_Resim.image = UIImage(named: urun.UrunResim)
        cell.lblBaslik.text = urun.Ad
        cell.lblFiyat.text = "\(urun.Fiyat) TL"
        cell.lblAciklama.text = urun.Aciklama
        return cell
    }

}

