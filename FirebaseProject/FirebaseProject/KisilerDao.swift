//
//  KisilerDao.swift
//  FirebaseProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation
import Firebase

class KisilerDao{
    //Firebase Reference Point
    var refKisiler = Database.database().reference().child("kisiler")
    
    //Save function
    func kaydet(kisi_ad: String, kisi_yas: Int){
        let yeniKisi = ["kisi_ad" : kisi_ad, "kisi_yas" : kisi_yas] as [String : Any]
        refKisiler.childByAutoId().setValue(yeniKisi)
    }
}
