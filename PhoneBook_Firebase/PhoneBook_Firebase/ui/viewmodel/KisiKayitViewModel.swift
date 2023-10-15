//
//  KisiKayitViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class KisiKayitViewModel{
    
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        let yeniKisi = ["kisi_id" : "", "kisi_ad" : kisi_ad, "kisi_tel" : kisi_tel]
        refKisiler.childByAutoId().setValue(yeniKisi)
    }
}
