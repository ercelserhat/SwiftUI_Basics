//
//  ContentView.swift
//  UserInteraction
//
//  Created by Serhat on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alert = false
    
    var body: some View {
        VStack(spacing: 30) {
            Button("Alert"){
                alert = true
            }.alert("Başlık", isPresented: $alert, actions: {
                Button("İptal", role: .cancel, action: {
                    print("İptal tıklandı.")
                })
                Button("Tamam", role: .destructive, action: {
                    print("Tamam tıklandı.")
                })
            }, message: {
                Text("İçerik")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
