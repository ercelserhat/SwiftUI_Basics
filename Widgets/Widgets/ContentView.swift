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
                .font(.system(size: 25))
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .bold()
            TextField("Veri giriniz", text: $textField)
                .textFieldStyle(MyStyle())
                .padding()
            Button("Veriyi Al"){
                alinanVeri = textField
            }.foregroundStyle(.white)
                .padding()
                .background(.pink)
                .cornerRadius(3.0)
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
