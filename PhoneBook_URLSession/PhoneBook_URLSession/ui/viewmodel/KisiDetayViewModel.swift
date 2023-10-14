//
//  KisiDetayViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation

class KisiDetayViewModel{
    
    //Update func
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)&kisi_ad=\(kisi_ad)&kisi_tel=\(kisi_tel)"
        istek.httpBody = postString.data(using: .utf8)
        URLSession.shared.dataTask(with: istek){ data, response, error in
             do{
                 let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data!)
                 print("--------------GÜNCELLE--------------")
                 print("Başarı  : \(cevap.success!)")
                 print("Mesaj   : \(cevap.message!)")

             }catch{
                 print(error.localizedDescription)
             }
         }.resume()
    }
}
