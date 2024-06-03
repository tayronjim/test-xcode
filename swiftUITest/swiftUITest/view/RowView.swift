//
//  RowView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 14/03/24.
//

import SwiftUI



struct RowView: View {
    
    var programmer : Programmer
    
    var body: some View {
        HStack{
            programmer.avatar
                .resizable()
                .frame(width: 60,height: 60)
                .padding(10)
            VStack(alignment: .leading, content: {
                Text(programmer.name).font(.title)
                Text(programmer.languages).font(.subheadline)
            })
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
            
        }.padding(10)
    }
}

#Preview {
    RowView(programmer: Programmer(id: 1, name: "Tay", languages: "JS", avatar: Image(.avatar1),favorite: true)
    
    )
}
