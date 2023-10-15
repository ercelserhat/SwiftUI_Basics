//
//  Yonetmenler.swift
//  MoviesApp
//
//  Created by Serhat on 11.10.2023.
//

import Foundation

class Yonetmenler: Identifiable{
    var yonetmen_id: Int?
    var yonetmen_ad: String?
    
    init(){
        
    }
    
    init(yonetmen_id: Int? = nil, yonetmen_ad: String? = nil) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
