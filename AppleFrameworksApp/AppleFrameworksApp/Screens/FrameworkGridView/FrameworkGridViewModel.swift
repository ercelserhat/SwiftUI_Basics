//
//  FrameworkGridViewModel.swift
//  AppleFrameworksApp
//
//  Created by Serhat on 4.11.2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}

