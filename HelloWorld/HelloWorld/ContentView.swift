//
//  ContentView.swift
//  HelloWorld
//
//  Created by Serhat on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height
            
            HStack{
                Rectangle().fill(.yellow).frame(maxWidth: ekranGenislik/2, maxHeight: .infinity)
                Rectangle().fill(.pink).frame(width: ekranGenislik/5, height: ekranYukseklik)
            }.frame(width: ekranGenislik, height: ekranYukseklik).background(.indigo)
        }
    }
}

#Preview {
    ContentView()
}
