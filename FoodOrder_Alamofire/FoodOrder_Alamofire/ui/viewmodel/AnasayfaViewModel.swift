//
//  AnasayfaViewModel.swift
//  RecipesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Alamofire

class AnasayfaViewModel: ObservableObject{
    @Published var yemeklerListesi = [Yemekler]()
    
    func yemekleriYukle(){
        let url = "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php"
        
        AF.request(url, method: .get).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(YemeklerCevap.self, from: data)
                    if let liste = cevap.yemekler{
                        DispatchQueue.main.async{
                            self.yemeklerListesi = liste
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }
    }
}
