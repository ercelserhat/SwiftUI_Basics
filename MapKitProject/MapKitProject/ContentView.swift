//
//  ContentView.swift
//  MapKitProject
//
//  Created by Serhat on 16.10.2023.
//

import SwiftUI
import MapKit

//39.9229566,32.8460175

struct Pin: Identifiable{
    let id = UUID()
    let konum: CLLocationCoordinate2D
}

struct ContentView: View {
    
    @State private var bolge = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.9229566, longitude: 32.8460175), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    let pinler = [
        Pin(konum: CLLocationCoordinate2D(latitude: 39.9229566, longitude: 32.8460175)),
        Pin(konum: CLLocationCoordinate2D(latitude: 41.0370323, longitude: 28.9644493))
    ]
    
    var body: some View {
        VStack(spacing: 30) {
            Map(coordinateRegion: $bolge, annotationItems: pinler){pin in
                MapMarker(coordinate: pin.konum)
            }.frame(width: 300, height: 300)
            Button("Konuma Git"){
                withAnimation{
                    bolge.center = CLLocationCoordinate2D(latitude: 41.0370323, longitude: 28.9644493)
                    bolge.span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
