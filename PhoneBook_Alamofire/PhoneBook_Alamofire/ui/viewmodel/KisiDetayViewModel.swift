//
//  KisiDetayViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Alamofire

class KisiDetayViewModel{
    
    //Update
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        let url = "http://kasimadalan.pe.hu/kisiler/update_kisiler.php"
        let params: Parameters = ["kisi_id" : kisi_id, "kisi_ad" : kisi_ad, "kisi_tel" : kisi_tel]
        AF.request(url, method: .post, parameters: params).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-----------GÜNCELLE-----------")
                    print("Başarı   :   \(cevap.success!)")
                    print("Mesaj    :   \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
