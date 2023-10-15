//
//  Anasayfa.swift
//  MoviesApp
//
//  Created by Serhat on 12.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kategorilerListesi){ kategori in
                    NavigationLink(destination: FilmlerSayfa(kategori: kategori)){
                        KategoriItem(kategori: kategori)
                    }
                }
            }.navigationTitle("Kategoriler")
                .onAppear(){
                    viewModel.kategorileriYukle()
                }
        }
    }
}

#Preview {
    Anasayfa()
}
