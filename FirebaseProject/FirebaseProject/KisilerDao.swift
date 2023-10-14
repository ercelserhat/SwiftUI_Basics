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
    
    //Read function
    func kisileriYukle(){
        refKisiler.observe(.value, with: {snapshot in
            var liste = [Kisiler]()
            if let gelenVeri = snapshot.value as? [String : Any]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let kisi_ad = d["kisi_ad"] as? String ?? ""
                        let kisi_yas = d["kisi_yas"] as? Int ?? 0
                        let kisi = Kisiler(kisi_ad: kisi_ad, kisi_yas: kisi_yas)
                        liste.append(kisi)
                    }
                }
            }
            
            for k in liste{
                print("----------------------")
                print("Kişi Ad  : \(k.kisi_ad!)")
                print("Kişi Yaş : \(k.kisi_yas!)")
            }
        })
    }
}
