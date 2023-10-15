//
//  ContentView.swift
//  MoviesApp
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct FilmlerSayfa: View {
    
    @ObservedObject var viewModel = FilmSayfaViewModel()
    
    var kategori = Kategoriler()
    
    var body: some View {
            GeometryReader{ geometry in
                let ekranGenislik = geometry.size.width
                let itemGenislik = (ekranGenislik - 40) / 2
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20){
                        ForEach(viewModel.filmlerListesi){ film in
                            NavigationLink(destination: FilmDetaySayfa(film: film)){
                                FilmItem(film: film, genislik: itemGenislik)
                            }
                        }
                    }
                }.padding(10)
                    .navigationTitle(kategori.kategori_ad!)
                    .onAppear(){
                        viewModel.filmleriYukle(kategori_ad: kategori.kategori_ad!)
                    }
            }
    }
}

#Preview {
    FilmlerSayfa()
}
