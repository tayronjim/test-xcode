//
//  FondoView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 26/03/24.
//

import SwiftUI

struct FondoView: View {
  
    
    @Binding var isNight:Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}


