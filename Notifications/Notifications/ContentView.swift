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
            Button("Bildirim Oluştur"){
                let icerik = UNMutableNotificationContent()
                icerik.title = "Başlık"
                icerik.subtitle = "Alt başlık"
                icerik.body = "İçerik"
                icerik.badge = 1
                icerik.sound = UNNotificationSound.default
                
                let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let istek = UNNotificationRequest(identifier: "id", content: icerik, trigger: tetikleme)
                UNUserNotificationCenter.current().add(istek)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
