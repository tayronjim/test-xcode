//
//  BindingView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 16/03/24.
//

import SwiftUI

struct BindingView: View {
    
        
    @Binding var cont: Int
    @State var selection: Int?
    @ObservedObject var user:UserData
    
    var body: some View {
        VStack{
            Text("El contador Binding es: \(cont)")
            Button("sumar 2"){
                cont += 2
            }
            Button("Cambiar Datos"){
                user.nombre = "TayJim"
                user.edad = 38
            }
            
            
        }
        
        NavigationLink(destination: EnviorementView().environmentObject(user),tag:1,selection: $selection){
            Button("Ir a Enviorement 1"){selection = 1 }
        }
        
        NavigationLink{
            EnviorementView().environmentObject(user)
        }label:{Label("Ir a Enviorement 2", systemImage: "folder")
        }
        
        NavigationLink("Ir a Enviorement 3"){
            EnviorementView().environmentObject(user)
        }
        
    }
    
}

#Preview {
    BindingView(cont: .constant(1), user:UserData())
}
