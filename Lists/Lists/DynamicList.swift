//
//  DynamicList.swift
//  Lists
//
//  Created by Serhat on 10.10.2023.
//

import SwiftUI

struct DynamicList: View {
    
    @State private var ulkelerListesi = [Ulkeler]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(ulkelerListesi){ ulke in
                    NavigationLink(destination: UlkeDetayPage(ulke: ulke)){
                        UlkeItem(ulke: ulke)
                        .onTapGesture {
                            print("\(ulke.ad!) Seçildi.")
                        }
                    }
                }.onDelete(perform: { indexSet in
                    ulkelerListesi.remove(at: indexSet.first!)
                })
            }
            //.listStyle(.plain) Klasik görünüm.
            .navigationTitle("Ülkeler")
                
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

struct UlkeItem: View {
    
    var ulke = Ulkeler()
    
    var body: some View {
        HStack{
            Text(ulke.ad!)
            Spacer()
            Text("Seç")
                .foregroundStyle(.red)
                .onTapGesture {
                    print("Text: \(ulke.ad!) seçildi.")
                }
        }
        
    }
}

#Preview {
    DynamicList()
}
