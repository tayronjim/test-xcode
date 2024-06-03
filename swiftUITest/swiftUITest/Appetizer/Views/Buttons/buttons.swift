//
//  buttons.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 15/04/24.
//

import SwiftUI

struct btnAddStyle:View {
    var price:Double
    
    var body: some View {
        btn1Style(price:price,text:"Agregar")
    }
}

struct btnSendStyle:View {
    var price:Double
    
    var body: some View {
        btn1Style(price:price,text:"Enviar Orden")
    }
}

struct btn1Style:View{
    
    var price:Double = 10.99
    var text:String = "valor"
    
    var body: some View {
        Text("\(price, specifier: "%.2f") - \(text)")
            .frame(width: 260, height: 50)
            .font(.title2)
            .foregroundStyle(Color(.white))
            .fontWeight(.semibold)
            .background(Color(.green))
            .cornerRadius(15.0)
            .padding()
    }
    
}

#Preview {
    btnAddStyle(price: 10.99)
}

