//
//  imageView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 12/03/24.
//

import SwiftUI

struct imageView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Image(systemName: "arcade.stick.and.arrow.left.and.arrow.right")
                .resizable()
                .frame(width: 100,height: 100)
                .foregroundColor(.blue)
                
            
            Image(.avatar1).resizable().scaledToFit()
            
            
            Image(.avatar1).resizable().clipShape(.circle)
                .frame(width: 200,height: 200)
                .overlay(Circle().stroke(Color(.black),lineWidth: 5))
                .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/ )
        }
    }
}

#Preview {
    imageView()
}
