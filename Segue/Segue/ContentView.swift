//
//  ContentView.swift
//  Segue
//
//  Created by Serhat on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ikinciEkranaGecis = false
    
    init(){
        print("init metodu çalıştı")
    }
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 30){
                Button("Başla"){
                    ikinciEkranaGecis = true
                }
                NavigationLink(destination: IkinciSayfa()){
                    Text("İkinci Sayfaya Git")
                }
            }
            .padding().navigationTitle("Anasayfa")
            .navigationDestination(isPresented: $ikinciEkranaGecis){
                let kisi = Kisiler(isim: "Serhat", yas: 31)
                IkinciSayfa(kisi: kisi)
            }
            .onAppear{
                print("onAppear metodu çalıştı.")
            }.onDisappear{
                print("onDisappear metodu çalıştı.")
            }
        }
    }
}

#Preview {
    ContentView()
}
