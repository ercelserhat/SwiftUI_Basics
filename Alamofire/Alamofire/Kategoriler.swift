//
//  Kategoriler.swift
//  AlamofireProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation

class Kategoriler: Codable{
    var kategori_id: String?
    var kategori_ad: String?
    
    init(){
        
    }
    
    init(kategori_id: String? = nil, kategori_ad: String? = nil) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
