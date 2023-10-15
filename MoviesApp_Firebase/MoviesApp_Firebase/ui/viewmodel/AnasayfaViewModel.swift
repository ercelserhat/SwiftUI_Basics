//
//  AnasayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class AnasayfaViewModel: ObservableObject{
    @Published var kategorilerListesi = [Kategoriler]()
    
    var refKategoriler = Database.database().reference().child("kategoriler")
    
    func kategorileriYukle(){
        refKategoriler.observe(.value, with: {snapshot in
            var liste = [Kategoriler]()
            if let gelenVeri = snapshot.value as? [String : AnyObject]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let kategori_id = satir.key
                        let kategori_ad = d["kategori_ad"] as? String ?? ""
                        
                        let kategori = Kategoriler(kategori_id: kategori_id, kategori_ad: kategori_ad)
                        liste.append(kategori)
                    }
                }
            }
            DispatchQueue.main.async{
                self.kategorilerListesi = liste
            }
        })
    }
}
