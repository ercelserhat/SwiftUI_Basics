//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Serhat on 13.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        Text("")
            .onAppear(){
                let kdao = KisilerDao()
            }
    }
}

#Preview {
    ContentView()
}
