//
//  StaticGridList.swift
//  Lists
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct StaticGridList: View {
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 20){
                    GridItemTasarim(isim: "Güneş", resim: "sun.min")
                        .onTapGesture {
                            print("Güneş tıklandı.")
                        }
                    GridItemTasarim(isim: "Ay", resim: "moon")
                        .onTapGesture {
                            print("Ay tıklandı.")
                        }
                    GridItemTasarim(isim: "Yıldız", resim: "star")
                        .onTapGesture {
                            print("Yıldız tıklandı.")
                        }
            }
        }.padding(10)
    }
}

struct GridItemTasarim: View {
    
    var isim: String
    var resim: String
    
    var body: some View {
        VStack{
            Image(systemName: resim)
            Text(isim)
        }.frame(width: 100, height: 100)
            .border(.gray)
    }
}

#Preview {
    StaticGridList()
}
