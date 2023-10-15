//
//  ContentView.swift
//  CoreLoation
//
//  Created by Serhat on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            Text("Enlem  : \(locationManager.konum.coordinate.latitude)")
            Text("Boylam : \(locationManager.konum.coordinate.longitude)")
            Text("Hız    : \(locationManager.konum.speed)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
