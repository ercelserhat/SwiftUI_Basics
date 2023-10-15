//
//  KisiDetayViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class KisiDetayViewModel{
    
    var refKisiler = Database.database().reference().child("kisiler")
    
    func guncelle(kisi_id: String, kisi_ad: String, kisi_tel: String){
        let guncellenenKisi = ["kisi_ad" : kisi_ad, "kisi_tel" : kisi_tel]
        refKisiler.child(kisi_id).updateChildValues(guncellenenKisi)
    }
}
