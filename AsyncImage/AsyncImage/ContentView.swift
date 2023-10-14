//
//  ContentView.swift
//  AsyncImage
//
//  Created by Serhat on 15.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var resimAdi = "kofte.png"
    
    var body: some View {
        VStack(spacing: 100){
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)")){image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 250, height: 250)
            Button("RESİM 1"){
                resimAdi = "baklava.png"
            }
            Button("RESİM 2"){
                resimAdi = "kofte.png"
            }
        }
    }
}

#Preview {
    ContentView()
}
