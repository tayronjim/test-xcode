//
//  ListDetailView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 14/03/24.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer:Programmer
    
    @Binding var favorite: Bool
    
    var body: some View {
        VStack{
            programmer.avatar
                .resizable()
                .frame(width: 200,height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black,lineWidth: 4))
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(programmer.name).font(.largeTitle)
            Text(programmer.languages).font(.title)
            Button{favorite.toggle()}
            label:{
                if favorite {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }
                else {
                    Image(systemName: "star").foregroundColor(.black)
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 1, name: "Tay", languages: "JS", avatar: Image(.avatar1),favorite: true),favorite: .constant(true))
}
