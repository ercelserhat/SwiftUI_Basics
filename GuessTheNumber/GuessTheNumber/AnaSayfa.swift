//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct AnaSayfa: View {
    
    @State private var tahminEkraninaGecis = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 100){
                Text("Tahmin Oyunu").font(.system(size: 30))
                Image("zar").resizable().frame(width: 100, height: 100)
                Button("Oyuna Başla"){
                    tahminEkraninaGecis = true
                }.foregroundStyle(.white)
                    .frame(width: 250, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
            }.navigationDestination(isPresented: $tahminEkraninaGecis){
                TahminEkrani()
            }
        }
    }
}

#Preview {
    AnaSayfa()
}
