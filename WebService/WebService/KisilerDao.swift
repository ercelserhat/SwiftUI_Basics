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
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(kisi_ad)&kisi_tel=\(kisi_tel)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data!)
                print("-------------KAYDET-------------")
                print("Başarı   : \(cevap.success!)")
                print("Mesaj    : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)&kisi_ad=\(kisi_ad)&kisi_tel=\(kisi_tel)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data!)
                print("-------------GÜNCELLE-------------")
                print("Başarı   : \(cevap.success!)")
                print("Mesaj    : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func sil(kisi_id: Int){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data!)
                print("-------------SİL-------------")
                print("Başarı   : \(cevap.success!)")
                print("Mesaj    : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func ara(aramaKelimesi: String){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(aramaKelimesi)"
        istek.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: istek){ data, response, error in
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
