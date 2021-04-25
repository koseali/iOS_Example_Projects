//
//  ColumnFlowLayout.swift
//  CollectionView
//
//  Created by Ali Köse on 20.04.2021.
//

import UIKit

class ColumnFlowLayout: UICollectionViewFlowLayout {
    let sutunSayisi : Int
    var yukseklikOrani : CGFloat = (2.0 / 3.0)
    init(sutunSayisi : Int, minSutunAraligi : CGFloat = 0 ,minSatirAraligi : CGFloat = 0) {
        self.sutunSayisi = sutunSayisi
        super.init()
        self.minimumInteritemSpacing = minSutunAraligi
        self.minimumLineSpacing = minSatirAraligi
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepare() {
        super.prepare()
        guard let collectionView = collectionView else {return}
        
        let araliklar = collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumInteritemSpacing * CGFloat(sutunSayisi - 1)
        
        let elemanGenislik = ((collectionView.bounds.size.width - araliklar) / CGFloat(sutunSayisi)).rounded(.down)
        
        let elemanYukseklik = elemanGenislik * yukseklikOrani
        itemSize = CGSize(width: elemanGenislik, height: elemanYukseklik)
    }
    
}
