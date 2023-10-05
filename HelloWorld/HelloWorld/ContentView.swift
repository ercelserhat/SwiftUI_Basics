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
            Rectangle().fill(.yellow).frame(maxWidth: 100, maxHeight: .infinity)
            Rectangle().fill(.pink).frame(width: 100, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
