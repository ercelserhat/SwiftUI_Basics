//
//  FilmDetaySayfa.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct FilmDetaySayfa: View {
    
    var film = Filmler()
    
    var body: some View {
        VStack(spacing: 50){
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(film.film_resim!)"))
            Text(film.yonetmen_ad!).font(.system(size: 30))
            Text(String(film.film_yil!)).font(.system(size: 50)).foregroundStyle(.blue)
            Button("Sepete Ekle"){
                print("Detay Sayfa: \(film.film_ad!) sepete eklendi.")
            }
            .foregroundStyle(.white)
            .frame(width: 250, height: 50)
            .background(.indigo)
            .cornerRadius(10)
        }.navigationTitle(film.film_ad!)
    }
}

#Preview {
    FilmDetaySayfa()
}
