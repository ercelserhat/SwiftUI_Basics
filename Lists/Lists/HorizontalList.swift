//
//  HorizontalList.swift
//  Lists
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct HorizontalList: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                YatayItemTasarim(isim: "Güneş", resim: "sun.min")
                        .onTapGesture {
                            print("Güneş tıklandı.")
                        }
                YatayItemTasarim(isim: "Ay", resim: "moon")
                        .onTapGesture {
                            print("Ay tıklandı.")
                        }
                YatayItemTasarim(isim: "Yıldız", resim: "star")
                        .onTapGesture {
                            print("Yıldız tıklandı.")
                        }
                YatayItemTasarim(isim: "Güneş", resim: "sun.min")
                        .onTapGesture {
                            print("Güneş tıklandı.")
                        }
                YatayItemTasarim(isim: "Ay", resim: "moon")
                        .onTapGesture {
                            print("Ay tıklandı.")
                        }
                YatayItemTasarim(isim: "Yıldız", resim: "star")
                        .onTapGesture {
                            print("Yıldız tıklandı.")
                        }
            }
        }.padding(10)
    }
}

struct YatayItemTasarim: View {
    
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
    HorizontalList()
}
