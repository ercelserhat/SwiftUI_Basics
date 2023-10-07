//
//  ContentView.swift
//  Segue
//
//  Created by Serhat on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ikinciEkranaGecis = false
    
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
                IkinciSayfa(isim: "Serhat", yas: 31)
            }
        }
    }
}

#Preview {
    ContentView()
}
