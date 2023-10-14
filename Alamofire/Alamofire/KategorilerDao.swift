//
//  KategorilerDao.swift
//  AlamofireProject
//
//  Created by Serhat on 14.10.2023.
//

import Foundation
import Alamofire

class KategorilerDao{
    func kategorileriYukle(){
        let url = "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php"
        AF.request(url, method: .get).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(KategorilerCevap.self, from: data)
                    if let liste = cevap.kategoriler{
                        for k in liste{
                            print("-----------------")
                            print("Kategori Id  : \(k.kategori_id!)")
                            print("Kategori Ad  : \(k.kategori_ad!)")
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
