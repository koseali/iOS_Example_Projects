//
//  CVFL_DataFlow.swift
//  CollectionView_Lab
//
//  Created by Ali Köse on 21.04.2021.
//

import UIKit

class CVFL_DataFlow: UICollectionViewFlowLayout {
    let sutunSayisi : Int
    var yukseklikOrani : CGFloat = (3.0 / 2.0) // bunu degistir. 2.0 tü 3 e 2 yaptık
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
