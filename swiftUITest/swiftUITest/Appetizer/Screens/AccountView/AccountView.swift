//
//  AccountView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 01/04/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var accountData = AccountViewModel()
    @FocusState var focusedTextField:FormTextField?
    
    enum FormTextField{
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView{
            Form{
                
                Section(content: {
                    TextField("Nombre", text: $accountData.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Apellido", text: $accountData.user.lastName)
                        .focused($focusedTextField,equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.continue)
                    
                    TextField("Email", text: $accountData.user.email)
                        .focused($focusedTextField,equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.done)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Cumpleaños", selection: $accountData.user.birthDay, displayedComponents: .date)
                    
                }, header: {
                    Text("Datos de cuenta")
                })
                
                Section(content: {
                    Toggle("Extra Servilletas", isOn: $accountData.user.extraNapkins)
                    Toggle("Refill", isOn: $accountData.user.frequentRefill)
                    
                    
                }, header: {
                    Text("Request")
                })
                
                Section(content: {
                    Button{
                        accountData.saveChanges()
                    }label:{
                        Text("Guardar Datos")
                    }
                })
                
                
            }
            .navigationTitle("Account")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard, content: {
                    Button(action: {focusedTextField = nil}, label: {
                        Text("Ocultar")
                    })
                })
            }
        }
        .onAppear(){
            accountData.retriveUser()
        }
        .alert(item: $accountData.alertItem, content: { alertItem in
            Alert(title: alertItem.tittle, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
    }
}

#Preview {
    AccountView( )
}
