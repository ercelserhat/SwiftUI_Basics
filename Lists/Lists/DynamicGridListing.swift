//
//  DynamicGridListing.swift
//  Lists
//
//  Created by Serhat on 11.10.2023.
//

import SwiftUI

struct DynamicGridListing: View {
    
    @State private var ulkelerListesi = [Ulkeler]()
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                let ekranGenislik = geometry.size.width
                //padding : 10
                //item arası boşluk : 20
                // 10 x 20 x 10 = 40
                let itemGenislik = (ekranGenislik - 40) / 2
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20){
                        ForEach(ulkelerListesi){ ulke in
                            NavigationLink(destination: UlkeDetayPage(ulke: ulke)){
                                UlkeGridItemTasarim(ulke: ulke, genislik: itemGenislik, yukseklik: itemGenislik)
                                    /*.onTapGesture {
                                        print("\(ulke.ad!) seçildi.")
                                    }*/
                            }
                            
                        }
                    }
                }
                .padding(10)
                .navigationTitle("Ülkeler")
            }
        }.onAppear(){
            var liste = [Ulkeler]()
            let u1 = Ulkeler(ad: "Türkiye")
            let u2 = Ulkeler(ad: "İtalya")
            let u3 = Ulkeler(ad: "Japonya")
            let u4 = Ulkeler(ad: "Almanya")
            liste.append(u1)
            liste.append(u2)
            liste.append(u3)
            liste.append(u4)
            ulkelerListesi = liste
        }
    }
}

struct UlkeGridItemTasarim: View {
    
    var ulke = Ulkeler()
    var genislik = 0.0
    var yukseklik = 0.0
    
    var body: some View {
        VStack{
            Text(ulke.ad!)
                .foregroundStyle(.black)
            Text("Seç")
                .foregroundStyle(.red)
                .onTapGesture {
                    print("Text: \(ulke.ad!) seçildi.")
                }
        }
        .frame(width: genislik, height: yukseklik)
        .border(.gray)
    }
}



#Preview {
    DynamicGridListing()
}
