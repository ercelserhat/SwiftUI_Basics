//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var resimAdi = "mutlu"
    
    var body: some View {
        VStack (spacing: 20){
            Image(resimAdi).resizable().frame(width: 100, height: 100)
            Button("Mutlu"){
                resimAdi = "mutlu"
            }
            Button("Üzgün"){
                resimAdi = "uzgun"
            }
        }
        .padding()
    }
}

struct MyStyle: TextFieldStyle{
    func _body(configuration: TextField<Self._Label>) -> some View{
        configuration
            .padding()
            .background(.green)
            .cornerRadius(3.0)
            .shadow(color: .gray, radius: 10)
            .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
