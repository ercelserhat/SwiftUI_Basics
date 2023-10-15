//
//  AnasayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation

class AnasayfaViewModel: ObservableObject{
    @Published var kategorilerListesi = [Kategoriler]()
    
    func kategorileriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php")!
        URLSession.shared.dataTask(with: url){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(KategorilerCevap.self, from: data!)
                if let liste = cevap.kategoriler{
                    DispatchQueue.main.async{
                        self.kategorilerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
