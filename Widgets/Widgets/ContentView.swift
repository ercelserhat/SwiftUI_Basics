//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var switchDurum = false
    
    var body: some View {
        VStack (spacing: 20){
            Toggle("Switch", isOn: $switchDurum)
                .onChange(of: switchDurum, { oldValue, newValue in
                    print("Switch Durum: \(newValue)")
                })
                .toggleStyle(SwitchToggleStyle(tint: .red))
                .padding()
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
