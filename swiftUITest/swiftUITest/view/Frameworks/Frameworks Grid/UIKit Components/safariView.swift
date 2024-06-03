//
//  safariView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 29/03/24.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
    
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    
}
