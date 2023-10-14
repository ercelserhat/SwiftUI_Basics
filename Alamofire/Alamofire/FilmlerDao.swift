//
//  FilmlerDao.swift
//  AlamofireProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation
import Alamofire

class FilmlerDao{
    func filmleriYukle(){
        let url = "http://kasimadalan.pe.hu/filmler/tum_filmler.php"
        AF.request(url, method: .get).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data)
                    if let liste = cevap.filmler{
                        for f in liste{
                            print("--------------------------")
                            print("Film Id         : \(f.film_id!)")
                            print("Film Adı        : \(f.film_ad!)")
                            print("Film Yılı       : \(f.film_yil!)")
                            print("Film Resmi      : \(f.film_resim!)")
                            print("Film Yonetmeni  : \(f.yonetmen!.yonetmen_ad!)")
                            print("Film Kategori   : \(f.kategori!.kategori_ad!)")
                        }
                    }
                    print("Başarı: \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
