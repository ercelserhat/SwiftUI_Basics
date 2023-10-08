//
//  TabViewPage.swift
//  NavigationStack
//
//  Created by Serhat on 8.10.2023.
//

import SwiftUI

struct TabViewPage: View {
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .systemIndigo
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func renkDegistir(itemAppearance: UITabBarItemAppearance){
        //Seçilme durumu
        itemAppearance.selected.iconColor = .systemPink
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemPink]
        //Seçilmeme durumu
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationStack{
            TabView{
                HomePage().tabItem {
                    Label("Anasayfa", systemImage: "homekit")
                }
                SettingsPage().tabItem {
                    Label("Ayarlar", systemImage: "gear")
                }
            }.navigationTitle("TabView Kullanımı")
        }
    }
}

#Preview {
    TabViewPage()
}
