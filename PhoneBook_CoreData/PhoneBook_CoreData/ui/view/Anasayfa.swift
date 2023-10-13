//
//  ContentView.swift
//  PhoneBook
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var aramaKelimesi = ""
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kisilerListesi){ kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi, kisilerListesi: $viewModel.kisilerListesi)){
                        KisilerSatir(kisi: kisi)
                    }
                }.onDelete(perform: { indexSet in
                    let kisi = viewModel.kisilerListesi[indexSet.first!]
                    viewModel.kisilerListesi.remove(at: indexSet.first!)
                    viewModel.sil(kisi: kisi)
                })
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName: "plus")
                        }
                    }
                }.onAppear(){
                    viewModel.kisileriYukle()
                    print("Anasayfaya dönüldü.")
                }
        }.searchable(text: $aramaKelimesi, prompt: "Ara")
            .onChange(of: aramaKelimesi) { oldValue, newValue in
                if newValue == ""{
                    viewModel.kisileriYukle()
                }else{
                    viewModel.ara(aramaKelimesi: newValue)
                }
            }
    }
}

#Preview {
    Anasayfa()
}
