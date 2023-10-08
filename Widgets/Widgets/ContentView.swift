//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text("Tıkla").onTapGesture {
                print("Tıklandı.")
            }
            Text("Çift Tıkla").onTapGesture(count: 2) {
                print("Çift Tıklandı.")
            }
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
