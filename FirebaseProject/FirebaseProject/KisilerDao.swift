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
    
    //Delete function
    func sil(key: String){
        refKisiler.child(key).removeValue()
    }
    
    //Update function
    func guncelle(key: String, kisi_ad: String, kisi_yas: Int){
        let guncellenenKisi = ["kisi_ad" : kisi_ad, "kisi_yas" : kisi_yas] as [String : Any]
        refKisiler.child(key).updateChildValues(guncellenenKisi)
    }
    
    //Equal query function
    func equal(){
        let sorgu = refKisiler.queryOrdered(byChild: "kisi_ad").queryEqual(toValue: "Berna")
        sorgu.observe(.value, with: {snapshot in
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
    
    //Get between values
    func betweenValues(){
        let sorgu = refKisiler.queryOrdered(byChild: "kisi_yas").queryStarting(atValue: 18).queryEnding(atValue: 23)
        sorgu.observe(.value, with: {snapshot in
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
    
    //Limit function
    func limit(){
        let sorgu = refKisiler.queryLimited(toLast: 1) //toFirst
        sorgu.observe(.value, with: {snapshot in
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
