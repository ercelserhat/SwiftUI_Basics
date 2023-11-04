//
//  SafariView.swift
//  AppleFrameworksApp
//
//  Created by Serhat on 4.11.2023.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    typealias UIViewControllerType = SFSafariViewController
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
