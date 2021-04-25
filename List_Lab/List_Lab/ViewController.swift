//
//  ViewController.swift
//  List_Lab
//
//  Created by Ali Köse on 22.04.2021.
//


// Başlık , Kısa Açıklama  ve ACIKLAMA bulunan bir makale yapısı olucak.
// Listede makale başlık ve kısa açıklaması görülecek
// 105 adet makale olucak
// 20 şerli ekrana basılacak
// Makala Başlık ve Kısa açıklamada arama yapılabilecek ve ekrana gösterilecek.

import UIKit

class ViewController: UIViewController , UISearchBarDelegate{
    @IBOutlet weak var tv_Makaleler: UITableView!
    var makale_Listesi : [Makale] = []
    var filtreli_Liste : [Makale] = []
    var yuklenmis_Liste : [Makale] = [] // kalan kısım
    var sayfa = 0 // bunu da yapmadık.
    override func viewDidLoad() {
        super.viewDidLoad()
        makale_Ekle(makaleSayisi: 105)
        filtreli_Liste.append(contentsOf: makale_Listesi)
        tv_Makaleler.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tv_Makaleler.reloadData()
    }
    
    func makale_Ekle(makaleSayisi : Int){
        for sayi in 0..<makaleSayisi{
            let makaleBaslik  = "Makale Baslik" + String(sayi)
            let makaleAciklama = "Makale Aciklamasi \(sayi)"
            let makaleKisaAciklama = "\(sayi).  kisa aciklamasi"
            makale_Listesi.append(Makale(baslik: makaleBaslik, aciklama: makaleAciklama, kisaaciklama: makaleKisaAciklama))
            if sayi < 20{
                yuklenmis_Liste.append(Makale(baslik: makaleBaslik, aciklama: makaleAciklama, kisaaciklama: makaleKisaAciklama))
            }
        }
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        sayfa = 0
        filtreli_Liste = searchText.isEmpty ? makale_Listesi : makale_Listesi.filter({ (makale) -> Bool in
            return (makale.Baslik.range(of: searchText , options: .caseInsensitive) != nil) || makale.Aciklama.range(of: searchText , options: .caseInsensitive) != nil
        })
        yuklenmis_Liste.removeAll()
        for i in 0..<filtreli_Liste.count{
            if i < 20{
                yuklenmis_Liste.append(filtreli_Liste[i])
            }
        }
        tv_Makaleler.reloadData()
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if ((scrollView.contentOffset.y + scrollView.frame.size.height) > (scrollView.contentSize.height * 0.9)){
            refreshPage()
        }
    }
    func refreshPage(){
        if(((sayfa+1)*20) < filtreli_Liste.count){
            for i in ((sayfa + 1)*20)..<((sayfa + 2)*20){
                if i < filtreli_Liste.count{
                    yuklenmis_Liste.append(filtreli_Liste[i])
                }
            }
        }
        sayfa += 1
        tv_Makaleler.reloadData()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yuklenmis_Liste.count // burası eksikmiş
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tv_Makaleler.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        // Bu şekilde de eklenebiliyor.
//        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        let makale = yuklenmis_Liste[indexPath.row]
        cell.lblBaslik.text = makale.Baslik
        cell.lblAciklama.text = makale.Aciklama
        return cell
    }
}

//    func refreshPage(){ // bozuk fonksiyon :(
//        let yuklenen = yuklenmis_Liste.count
//        if yuklenen < makale_Listesi.count{
//        if yuklenen < makale_Listesi.count && yuklenen < 100{
//            for i in yuklenen..<yuklenen + 20{
//                yuklenmis_Liste.append(makale_Listesi[i])
//            }}
//        else if yuklenen >= 100 {
//                for i in yuklenen..<yuklenen + 5{
//                    yuklenmis_Liste.append(makale_Listesi[i])
//                }
//
//        }
//
//        }
//        tv_Makaleler.reloadData()
//    }
