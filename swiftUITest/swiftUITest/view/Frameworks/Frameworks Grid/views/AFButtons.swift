//
//  AFButtons.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 29/03/24.
//

import SwiftUI

struct AFButtons: View {
    var texto:String
    var urlString:String
    
    var body: some View {
        Link(texto, destination: URL(string:urlString)!)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButtons2: View {
    var texto:String
    
    var body: some View {
        Text(texto)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct XClose:View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button{
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
            }
        }.padding()
    }
}
