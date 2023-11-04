//
//  ContentView.swift
//  AppleFrameworksApp
//
//  Created by Serhat on 4.11.2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Apple Frameworks")
            .navigationDestination(for: Framework.self){ framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}

