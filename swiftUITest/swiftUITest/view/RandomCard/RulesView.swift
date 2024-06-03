//
//  RulesView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 22/03/24.
//

import SwiftUI

struct RulesView: View {
    
    var body: some View {
        Text("RULES").font(.title).padding(.bottom, 40.0).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        
        Text("El valor de la carta representa un numero")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 10.0)
        
        Text("J=11, Q=12, K=13, A=14 ")
            .padding(.bottom, 20.0)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        
        Label("♠️ = push-Up \n\n ♥️ = Sit-Up \n\n ♣️ = Burpees \n\n ♦️ = Jumping-Jacks", systemImage:"" ).padding(.top, 50.0).labelStyle(.titleOnly)
        
        
        
    }
}

#Preview {
    RulesView()
}
