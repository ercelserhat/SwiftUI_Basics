//
//  AnasayfaViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class AnasayfaViewModel: ObservableObject{
    @Published var kisilerListesi = [Kisiler]()
    
    var refKisiler = Database.database().reference().child("kisiler")
    
    func kisileriYukle(){
        refKisiler.observe(.value, with: {snapshot in
            var liste = [Kisiler]()
            if let gelenVeri = snapshot.value as? [String : AnyObject]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let kisi_id = satir.key
                        let kisi_ad = d["kisi_ad"] as? String ?? ""
                        let kisi_tel = d["kisi_tel"] as? String ?? ""
                        let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                        liste.append(kisi)
                    }
                }
            }
            DispatchQueue.main.async{
                self.kisilerListesi = liste
            }
        })
    }
    
    func ara(aramaKelimesi: String){
        refKisiler.observe(.value, with: {snapshot in
            var liste = [Kisiler]()
            if let gelenVeri = snapshot.value as? [String : AnyObject]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let kisi_id = satir.key
                        let kisi_ad = d["kisi_ad"] as? String ?? ""
                        let kisi_tel = d["kisi_tel"] as? String ?? ""
                        
                        if kisi_ad.lowercased().contains(aramaKelimesi.lowercased()){
                            let kisi = Kisiler(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
                            liste.append(kisi)
                        }
                    }
                }
            }
            DispatchQueue.main.async{
                self.kisilerListesi = liste
            }
        })
    }
    
    func sil(kisi_id: String){
        refKisiler.child(kisi_id).removeValue()
    }
}
