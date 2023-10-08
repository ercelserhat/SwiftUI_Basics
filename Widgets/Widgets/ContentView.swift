//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stepperDurum = 0
    
    var body: some View {
        VStack{
            Stepper("Stepper", value: $stepperDurum, in: 0...10)
                .padding()
            Text("Sonuç: \(stepperDurum)")
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
