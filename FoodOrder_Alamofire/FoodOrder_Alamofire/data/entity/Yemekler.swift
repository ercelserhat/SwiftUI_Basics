//
//  Yemekler.swift
//  RecipesApp
//
//  Created by Serhat on 11.10.2023.
//

import Foundation

class Yemekler: Identifiable, Codable{
    var yemek_id: String?
    var yemek_adi: String?
    var yemek_resim_adi: String?
    var yemek_fiyat: String?
    
    init(){
        
    }
    
    init(yemek_id: String? = nil, yemek_adi: String? = nil, yemek_resim_adi: String? = nil, yemek_fiyat: String? = nil) {
        self.yemek_id = yemek_id
        self.yemek_adi = yemek_adi
        self.yemek_resim_adi = yemek_resim_adi
        self.yemek_fiyat = yemek_fiyat
    }
}
