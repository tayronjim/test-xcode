//
//  Alert.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 10/04/24.
//

import SwiftUI

struct AlertAppetizer:Identifiable{
    let id = UUID()
    let tittle: Text
    let message: Text
    let dismissButton: Alert.Button
    
}

struct AlertContextAppetizer{
    static let invalidURL = AlertAppetizer(
        tittle: Text("Invalid URL"),
        message: Text("Error en la URL"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidResponse = AlertAppetizer(
        tittle: Text("Invalid Response"),
        message: Text("Respuesta Invalida"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidData = AlertAppetizer(
        tittle: Text("Invalid Data"),
        message: Text("Dato Invalido"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let unableToComplete = AlertAppetizer(
        tittle: Text("Unable To Complete"),
        message: Text("No se puede completar la accion"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidForm = AlertAppetizer(
        tittle: Text("Campos invalidos"),
        message: Text("Todos los campos deben llenarse"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidEmailFormat = AlertAppetizer(
        tittle: Text("Email Formato Invalido"),
        message: Text("El email no tiene el formato correcto"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let userSaveSuccess = AlertAppetizer(
        tittle: Text("user Save Success"),
        message: Text("El usuario se guardo correctamente"),
        dismissButton: .default(Text("Ok"))
    )
    
    static let invalidUserData = AlertAppetizer(
        tittle: Text("invalid User Data"),
        message: Text("problemas al guardar el usuario"),
        dismissButton: .default(Text("Ok"))
    )
    
}


