//
//  ContentView.swift
//  NavigationStack
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Merhaba")
            }.navigationTitle("Anasayfa")
            //.navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button("Geri"){
                            print("Geri tıklandı.")
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing){
                        Button("Ayarlar"){
                            print("Ayarlar tıklandı.")
                        }
                        Button{
                            print("Ekle tıklandı.")
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
