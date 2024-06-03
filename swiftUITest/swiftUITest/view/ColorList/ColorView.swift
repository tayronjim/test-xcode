//
//  ColorView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 21/03/24.
//

import SwiftUI



struct ColorView: View {
    
    var color:Color?
    
    var body: some View {
        HStack(
                alignment: .top,
                spacing: 10
            ) {
                Text("Hex:\(color!.toHex()) ")
            }
            .padding(.all)
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color(color ?? .blue))
        
    }
}

#Preview {
    ColorView(color: .blue)
}
