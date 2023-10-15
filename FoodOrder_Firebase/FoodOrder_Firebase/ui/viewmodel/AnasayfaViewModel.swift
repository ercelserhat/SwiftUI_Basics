//
//  AnasayfaViewModel.swift
//  RecipesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class AnasayfaViewModel: ObservableObject{
    @Published var yemeklerListesi = [Yemekler]()
    
    var refYemekler = Database.database().reference().child("yemekler")
    
    func yemekleriYukle(){
        
        refYemekler.observe(.value, with: { snapshot in
            var liste = [Yemekler]()
            if let gelenVeri = snapshot.value as? [String : AnyObject]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let yemek_id = satir.key
                        let yemek_adi = d["yemek_adi"] as? String ?? ""
                        let yemek_resim_adi = d["yemek_resim_adi"] as? String ?? ""
                        let yemek_fiyat = d["yemek_fiyat"] as? Int ?? 0
                        
                        let yemek = Yemekler(yemek_id: yemek_id, yemek_adi: yemek_adi, yemek_resim_adi: yemek_resim_adi, yemek_fiyat: yemek_fiyat)
                        liste.append(yemek)
                    }
                }
            }
            DispatchQueue.main.async{
                self.yemeklerListesi = liste
            }
        })
        
    }
}
