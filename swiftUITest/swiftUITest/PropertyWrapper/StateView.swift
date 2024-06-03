//
//  StateView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 16/03/24.
//

import SwiftUI

class UserData: ObservableObject {
    
    @Published var nombre = "tay"
    @Published var edad = 30
}

struct StateView: View {
    
    @State var cont = 0
    @StateObject var user = UserData()
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("El contador State es: \(cont)")
                Button("sumar 1"){
                    cont += 1
                }
                Text("Mi nombre es: \(user.nombre) y mi edad \(user.edad)")
                Button("Actualiza usuario"){
                    user.nombre = "israel"
                    user.edad = 35
                }
                NavigationLink{
                    BindingView(cont: $cont, user: user)
                }label:{Label("Ir a Binding", systemImage: "folder")}
            }
            
        }
        
        
        
    }
}

#Preview {
    StateView().environmentObject(UserData())
}
