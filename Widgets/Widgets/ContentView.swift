//
//  ContentView.swift
//  Widgets
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var segmentedDurum = 0
    
    var body: some View {
        VStack{
            Picker("", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.onChange(of: segmentedDurum) { oldValue, newValue in
                print("Segmented: \(newValue)")
            }
            Picker("", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.inline)
            Picker("", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.palette)
            Picker("", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.wheel)
            Picker("", selection: $segmentedDurum){
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.segmented)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
