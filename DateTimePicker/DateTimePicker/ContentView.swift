//
//  ContentView.swift
//  DateTimePicker
//
//  Created by Serhat on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    @State private var time = Date()
    @State private var alinanTarih = ""
    @State private var alinanSaat = ""
    
    var body: some View {
        VStack(spacing: 50){
            DatePicker("Tarih", selection: $date, displayedComponents: [.date]).padding()
            DatePicker("Saat", selection: $time, displayedComponents: [.hourAndMinute]).padding()
            
            Text(alinanTarih)
            Text(alinanSaat)
            
            Button("GÖSTER"){
                let saatFormat = DateFormatter()
                saatFormat.dateFormat = "HH:mm"
                alinanSaat = saatFormat.string(from: time)
                
                let tarihFormat = DateFormatter()
                tarihFormat.dateFormat = "MM/dd/yyyy"
                alinanTarih = tarihFormat.string(from: date)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
