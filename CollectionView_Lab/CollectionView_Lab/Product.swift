//
//  Product.swift
//  CollectionView_Lab
//
//  Created by Ali Köse on 21.04.2021.
//

import Foundation
class Product {
    var UrunResim : String
    var Ad : String
    var Fiyat : Float
    var Aciklama : String
    init(urunresim:String,ad:String,fiyat:Float,aciklama:String) {
        UrunResim = urunresim
        Ad = ad
        Fiyat = fiyat
        Aciklama = aciklama
    }
}
