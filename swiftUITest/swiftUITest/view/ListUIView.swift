//
//  ListUIView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 14/03/24.
//

import SwiftUI

final class ProgrammerModelData: ObservableObject{
    
    @Published var programers = [
           Programmer(id: 1, name: "Tay1", languages: "JS", avatar: Image(.avatar1),favorite: true),
           Programmer(id: 2, name: "Tay2", languages: "JS", avatar: Image(.avatar1), favorite: false),
           Programmer(id: 3, name: "Tay3", languages: "JS", avatar: Image(.avatar1), favorite: true),
           Programmer(id: 4, name: "Tay4", languages: "JS", avatar: Image(.avatar1),favorite: false)
       ]
}



struct ListUIView: View {
    
    @EnvironmentObject var programmerModelData : ProgrammerModelData
    
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmerModelData.programers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Toggle(isOn: $showFavorites, label: {
                    Text("Ver Favoritos")
                }).padding()
            
                List(filteredProgrammers, id: \.id){
                    programmer in NavigationLink(destination:ListDetailView(programmer: programmer, favorite: $programmerModelData.programers[programmer.id-1].favorite)){ RowView(programmer: programmer)}
                }
                
            }.navigationTitle("Programmers")
            
        }.frame(height: 600)
        
        
        
        List{
            RowView(programmer: Programmer(id: 1, name: "Tay1", languages: "JS", avatar: Image(.avatar1),favorite: true))
            
        }
        
    }
}

#Preview {
    ListUIView().environmentObject(ProgrammerModelData())
}
