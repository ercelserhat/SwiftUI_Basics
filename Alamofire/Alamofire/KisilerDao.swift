//
//  KisilerDao.swift
//  Alamofire
//
//  Created by Serhat on 14.10.2023.
//

import Foundation
import Alamofire

class KisilerDao{
    
    func kisileriYukle(){
        let url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php"
        AF.request(url, method: .get).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let liste = cevap.kisiler{
                        for k in liste{
                            print("---------------------")
                            print("Kişi Id  : \(k.kisi_id!)")
                            print("Kişi Ad  : \(k.kisi_ad!)")
                            print("Kişi Tel : \(k.kisi_tel!)")
                        }
                    }
                    print("---------------------")
                    print("Başarı   : \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
