//
//  AnasayfaViewModel.swift
//  RecipesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation

class AnasayfaViewModel: ObservableObject{
    @Published var yemeklerListesi = [Yemekler]()
    
    func yemekleriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(YemeklerCevap.self, from: data!)
                if let liste = cevap.yemekler{
                    DispatchQueue.main.async{
                        self.yemeklerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
