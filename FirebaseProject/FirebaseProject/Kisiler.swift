//
//  Kisiler.swift
//  FirebaseProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation

class Kisiler{
    var kisi_ad: String?
    var kisi_yas: Int?
    
    init(){
        
    }
    
    init(kisi_ad: String? = nil, kisi_yas: Int? = nil) {
        self.kisi_ad = kisi_ad
        self.kisi_yas = kisi_yas
    }
}
