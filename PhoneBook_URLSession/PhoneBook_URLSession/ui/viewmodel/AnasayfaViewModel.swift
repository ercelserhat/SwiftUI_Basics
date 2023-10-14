//
//  AnasayfaViewModel.swift
//  PhoneBook
//
//  Created by Serhat on 12.10.2023.
//

import Foundation

class AnasayfaViewModel: ObservableObject{
    @Published var kisilerListesi = [Kisiler]()
    
    //Read func
    func kisileriYukle(){
       let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                if let liste = cevap.kisiler{
                    DispatchQueue.main.async{
                        self.kisilerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    //Search func
    func ara(aramaKelimesi: String){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_ad=\(aramaKelimesi)"
        istek.httpBody = postString.data(using: .utf8)
        URLSession.shared.dataTask(with: istek){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data!)
                if let liste = cevap.kisiler{
                    DispatchQueue.main.async{
                        self.kisilerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
         }.resume()
    }
    
    //Delete func
    func sil(kisi_id: Int){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        istek.httpMethod = "POST"
        let postString = "kisi_id=\(kisi_id)"
        istek.httpBody = postString.data(using: .utf8)
        URLSession.shared.dataTask(with: istek){ data, response, error in
             do{
                 let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data!)
                 print("--------------SİL--------------")
                 print("Başarı  : \(cevap.success!)")
                 print("Mesaj   : \(cevap.message!)")
                 self.kisileriYukle()
             }catch{
                 print(error.localizedDescription)
             }
         }.resume()
    }
}
