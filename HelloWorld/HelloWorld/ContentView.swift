//
//  ContentView.swift
//  HelloWorld
//
//  Created by Serhat on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sayac: Int = 0
    
    var body: some View {
        VStack{
            Text("Sayaç: \(sayac)")
            Button("Tıkla"){
                sayac += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
