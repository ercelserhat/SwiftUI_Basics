//
//  FilmItem.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct FilmItem: View {
    
    var film = Filmler()
    var genislik = 0.0
    
    var body: some View {
        VStack(spacing: 5){
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(film.film_resim!)")){ image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }.frame(width: genislik)
            Text(film.film_ad!).foregroundStyle(.gray)
            Text("Sepete Ekle")
                .padding(5)
                .foregroundStyle(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
                .onTapGesture {
                    print("\(film.film_ad!) sepete eklendi.")
                }
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

#Preview {
    FilmItem()
}
