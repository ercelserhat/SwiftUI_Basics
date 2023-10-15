//
//  FilmSayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Firebase

class FilmSayfaViewModel: ObservableObject{
    @Published var filmlerListesi = [Filmler]()
    
    var refFilmler = Database.database().reference().child("filmler")

    func filmleriYukle(kategori_ad: String){
        let sorgu = refFilmler.queryOrdered(byChild: "kategori_ad").queryEqual(toValue: kategori_ad)
        sorgu.observe(.value, with: {snapshot in
            var liste = [Filmler]()
            if let gelenVeri = snapshot.value as? [String : AnyObject]{
                for satir in gelenVeri{
                    if let d = satir.value as? NSDictionary{
                        let film_id = satir.key
                        let film_ad = d["film_ad"] as? String ?? ""
                        let film_yil = d["film_yil"] as? Int ?? 0
                        let film_resim = d["film_resim"] as? String ?? ""
                        let kategori_ad = d["kategori_ad"] as? String ?? ""
                        let yonetmen_ad = d["yonetmen_ad"] as? String ?? ""
                        
                        let film = Filmler(film_id: film_id, film_ad: film_ad, film_yil: film_yil, film_resim: film_resim, kategori_ad: kategori_ad, yonetmen_ad: yonetmen_ad)
                        liste.append(film)
                    }
                }
            }
            DispatchQueue.main.async{
                self.filmlerListesi = liste
            }
        })
    }
}
