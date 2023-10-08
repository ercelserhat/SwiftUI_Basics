//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderDurum = 30.0
    
    var body: some View {
        VStack{
            Slider(value: $sliderDurum, in: 0...100).padding()
            Text("Sonuç: \(Int(sliderDurum))")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
