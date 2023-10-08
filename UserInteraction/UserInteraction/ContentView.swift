//
//  ContentView.swift
//  UserInteraction
//
//  Created by Serhat on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alert = false
    @State private var actionSheet = false
    
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
            
            Button("Action Sheet"){
                actionSheet = true
            }.actionSheet(isPresented: $actionSheet){
                ActionSheet(title: Text("Başlık"),
                            message: Text("İçerik"),
                            buttons: [
                                .default(Text("İptal"), action: {
                                    print("İptal Tıklandı.")
                                }),
                                .destructive(Text("Tamam"), action: {
                                    print("Tamam Tıklandı.")
                                })
                            ])
            }
            
            Text("Context Menu")
                .contextMenu{
                    Button{
                        print("Resim seçildi.")
                    }label: {
                        Label("Resim Çek", systemImage: "camera")
                    }
                    
                    Button{
                        print("Video seçildi.")
                    }label: {
                        Label("Video Kaydet", systemImage: "video")
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
