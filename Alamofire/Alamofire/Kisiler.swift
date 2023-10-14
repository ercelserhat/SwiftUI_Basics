//
//  Kisiler.swift
//  Alamofire
//
//  Created by Serhat on 14.10.2023.
//

import Foundation

class Kisiler: Codable{
    var kisi_id: String?
    var kisi_ad: String?
    var kisi_tel: String?
    
    init(){
        
    }
    
    init(kisi_id: String? = nil, kisi_ad: String? = nil, kisi_tel: String? = nil) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
