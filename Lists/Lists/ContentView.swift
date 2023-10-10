//
//  ContentView.swift
//  Lists
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ItemTasarim(isim: "Güneş", resim: "sun.min")
                .onTapGesture {
                    print("Güneş tıklandı.")
                }
            ItemTasarim(isim: "Ay", resim: "moon")
                .onTapGesture {
                    print("Ay tıklandı.")
                }
            ItemTasarim(isim: "Yıldız", resim: "star")
                .onTapGesture {
                    print("Yıldız tıklandı.")
                }
        }
    }
}

struct ItemTasarim: View {
    
    var isim: String
    var resim: String
    
    var body: some View {
        HStack{
            Image(systemName: resim)
            Text(isim)
        }
    }
}

#Preview {
    ContentView()
}
