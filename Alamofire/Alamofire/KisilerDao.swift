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
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        let url = "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php"
        let params: Parameters = ["kisi_ad" : kisi_ad, "kisi_tel" : kisi_tel]
        AF.request(url, method: .post, parameters: params).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-----------KAYDET-----------")
                    print("Başarı   : \(cevap.success!)")
                    print("Mesaj    : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String){
        let url = "http://kasimadalan.pe.hu/kisiler/update_kisiler.php"
        let params: Parameters = ["kisi_id" : kisi_id, "kisi_ad" : kisi_ad, "kisi_tel" : kisi_tel]
        AF.request(url, method: .post, parameters: params).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-----------GUNCELLE-----------")
                    print("Başarı   : \(cevap.success!)")
                    print("Mesaj    : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func sil(kisi_id: Int){
        let url = "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php"
        let params: Parameters = ["kisi_id" : kisi_id]
        AF.request(url, method: .post, parameters: params).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-----------SİL-----------")
                    print("Başarı   : \(cevap.success!)")
                    print("Mesaj    : \(cevap.message!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func ara(aramaKelimesi: String){
        let url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php"
        let params: Parameters = ["kisi_ad" : aramaKelimesi]
        AF.request(url, method: .post, parameters: params).response{ response in
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
