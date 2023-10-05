//
//  ContentView.swift
//  HelloWorld
//
//  Created by Serhat on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            SariKare()
            PembeKare()
            Metin(icerik: "Merhaba", yaziBoyutu: 25)
        }
    }
}

#Preview {
    ContentView()
}

struct SariKare: View{
    var body: some View{
        Rectangle().fill(.yellow).frame(maxWidth: 100, maxHeight: .infinity)
    }
}

struct PembeKare: View{
    var body: some View{
        Rectangle().fill(.pink).frame(width: 100, height: 200)
    }
}

struct Metin: View{
    var icerik = ""
    var yaziBoyutu = 0
    var body: some View{
        Text(icerik).font(.system(size: CGFloat(yaziBoyutu)))
    }
}
