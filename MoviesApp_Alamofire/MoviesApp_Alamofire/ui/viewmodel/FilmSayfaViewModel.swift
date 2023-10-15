//
//  FilmSayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation
import Alamofire

class FilmSayfaViewModel: ObservableObject{
    @Published var filmlerListesi = [Filmler]()
    
    func filmleriYukle(kategori_id: Int){
        let url = "http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php"
        let params: Parameters = ["kategori_id" : kategori_id]
        AF.request(url, method: .post, parameters: params).response{ response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data)
                    if let liste = cevap.filmler{
                        DispatchQueue.main.async{
                            self.filmlerListesi = liste
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
