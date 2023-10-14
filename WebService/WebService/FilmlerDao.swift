//
//  FilmlerDao.swift
//  WebService
//
//  Created by Serhat on 14.10.2023.
//

import Foundation

class FilmlerDao{
    
    func filmleriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data!)
                if let liste = cevap.filmler{
                    for f in liste{
                        print("----------------------------")
                        print("Film Id    : \(f.film_id!)")
                        print("Film Adı   : \(f.film_ad!)")
                        print("Film Yılı  : \(f.film_yil!)")
                        print("Film Resim : \(f.film_resim!)")
                        print("Kategori   : \(f.kategori!.kategori_ad!)")
                        print("Yönetmen   : \(f.yonetmen!.yonetmen_ad!)")
                    }
                }
                print("Başarı: \(cevap.success!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
