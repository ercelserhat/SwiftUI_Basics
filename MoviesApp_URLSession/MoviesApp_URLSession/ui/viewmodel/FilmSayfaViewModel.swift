//
//  FilmSayfaViewModel.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import Foundation

class FilmSayfaViewModel: ObservableObject{
    @Published var filmlerListesi = [Filmler]()
    
    func filmleriYukle(kategori_id: Int){
        var istek = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php")!)
        istek.httpMethod = "POST"
        let postString = "kategori_id=\(kategori_id)"
        istek.httpBody = postString.data(using: .utf8)
        URLSession.shared.dataTask(with: istek){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data!)
                if let liste = cevap.filmler{
                    DispatchQueue.main.async{
                        self.filmlerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
