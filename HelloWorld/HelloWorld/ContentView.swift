//
//  ContentView.swift
//  HelloWorld
//
//  Created by Serhat on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle().fill(.gray).frame(width: 400, height: 400)
            VStack{
                Rectangle().fill(.red).frame(width: 100, height: 100)
                Rectangle().fill(.green).frame(width: 80, height: 80)
                Rectangle().fill(.blue).frame(width: 50, height: 50)
                HStack{
                    Rectangle().fill(.cyan).frame(width: 100, height: 100)
                    Rectangle().fill(.indigo).frame(width: 80, height: 80)
                    Rectangle().fill(.mint).frame(width: 50, height: 50)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
