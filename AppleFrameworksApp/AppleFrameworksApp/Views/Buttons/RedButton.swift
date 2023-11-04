//
//  RedButton.swift
//  AppleFrameworksApp
//
//  Created by Serhat on 4.11.2023.
//

import SwiftUI

struct RedButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundStyle(.white)
            .background(.red)
            .clipShape(.rect(cornerRadius: 10))
            .shadow(radius: 10)
    }
}

#Preview {
    RedButton(title: "Red Button")
}
