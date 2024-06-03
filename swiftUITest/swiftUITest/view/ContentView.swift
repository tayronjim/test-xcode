//
//  ContentView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 11/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        HStack(alignment: .center, spacing: 30.0) {
            Divider()
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.blue)
                .background(Color(.white))
            
            Spacer()
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20.0) {
                
                Text("Hello, world!")
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color(.gray))
                
                Spacer()
                
                Text("Hello, world!")
                    .foregroundColor(.white)
                    .font(.title)
                    .background(Color(.cyan))
                
            }
            
            Divider()
            
        }
        .padding()
        .background(Color(.yellow))
    }
}

#Preview {
    ContentView()
}
