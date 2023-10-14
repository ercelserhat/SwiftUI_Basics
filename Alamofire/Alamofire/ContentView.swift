//
//  ContentView.swift
//  Alamofire
//
//  Created by Serhat on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("")
                .onAppear(){
                    let kisilerDao = KisilerDao()
                    kisilerDao.kisileriYukle()
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
