//
//  ContentView.swift
//  Notifications
//
//  Created by Serhat on 16.10.2023.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    
    init(){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]){success, error in
            if success{
                print("Bildirim izni var.")
            }else{
                print("Bildirim izni yok.")
            }
        }
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
