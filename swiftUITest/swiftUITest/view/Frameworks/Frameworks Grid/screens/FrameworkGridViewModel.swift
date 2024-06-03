//
//  FrameworkGridViewModel.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 29/03/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible(), alignment: .top),
        GridItem(.flexible(), alignment: .top),
        GridItem(.flexible(), alignment: .top)
    ]
    
}

