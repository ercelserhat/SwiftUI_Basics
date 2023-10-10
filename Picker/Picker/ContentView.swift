//
//  ContentView.swift
//  Picker
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ulkelerListesi = [String]()
    @State private var secilenUlke = ""
    
    var body: some View {
        VStack {
            Picker("", selection: $secilenUlke){
                ForEach(ulkelerListesi, id:\.self){ ulke in
                    Text(ulke)
                }
            }
            Text("Seçilen ülke: \(secilenUlke)")
        }
        .padding()
        .onAppear(){
            ulkelerListesi.append("Türkiye")
            ulkelerListesi.append("İtalya")
            ulkelerListesi.append("Japonya")
        }
    }
}

#Preview {
    ContentView()
}
