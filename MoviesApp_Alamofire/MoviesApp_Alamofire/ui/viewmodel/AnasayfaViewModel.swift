//
//  AnasayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Alamofire

class AnasayfaViewModel: ObservableObject{
    @Published var kategorilerListesi = [Kategoriler]()
    
    func kategorileriYukle(){
        let url = "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php"
        AF.request(url, method: .get).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(KategorilerCevap.self, from: data)
                    if let liste = cevap.kategoriler{
                        DispatchQueue.main.async{
                            self.kategorilerListesi = liste
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
        
    }
}
