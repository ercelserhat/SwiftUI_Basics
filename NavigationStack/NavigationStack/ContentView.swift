//
//  ContentView.swift
//  NavigationStack
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemIndigo
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
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
                        }.foregroundStyle(.white)
                    }
                    ToolbarItemGroup(placement: .topBarTrailing){
                        Button("Ayarlar"){
                            print("Ayarlar tıklandı.")
                        }.foregroundStyle(.white)
                        Button{
                            print("Ekle tıklandı.")
                        } label: {
                            Image(systemName: "plus")
                        }.foregroundStyle(.white)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
