//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alinanVeri = ""
    @State private var textField = ""
    
    var body: some View {
        VStack {
            Text("Gelen Veri: \(alinanVeri)")
            TextField("Veri giriniz", text: $textField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Veriyi Al"){
                alinanVeri = textField
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
