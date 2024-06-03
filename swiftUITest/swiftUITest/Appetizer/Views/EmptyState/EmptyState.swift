//
//  EmptyState.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 15/04/24.
//

import SwiftUI

struct EmptyState: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack{
                Image("papyrus")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                
                Text("La lista esta vacia")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color(.darkGray))
                    .padding()
                Spacer()
            }
        }
        
    }
}

#Preview {
    EmptyState()
}
