//
//  ContentView.swift
//  RecipesApp
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.yemeklerListesi){ yemek in
                    NavigationLink(destination: YemekDetay(yemek: yemek)){
                        YemekSatir(yemek: yemek)
                    }
                    
                }
            }.navigationTitle("Yemekler")
                .onAppear(){
                    viewModel.yemekleriYukle()
                }
        }
    }
}

#Preview {
    Anasayfa()
}
