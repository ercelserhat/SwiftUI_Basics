//
//  KisilerDao.swift
//  WebService
//
//  Created by Serhat on 14.10.2023.
//

import Foundation

class KisilerDao{
    func kisileriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")
        URLSession.shared.dataTask(with: url!){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                
                if let liste = cevap.kisiler{
                    for k in liste{
                        print("---------------------")
                        print("Kişi Id  : \(k.kisi_id!)")
                        print("Kişi Ad  : \(k.kisi_ad!)")
                        print("Kişi Tel : \(k.kisi_tel!)")
                    }
                }
                
                print("Başarı: \(cevap.success!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
