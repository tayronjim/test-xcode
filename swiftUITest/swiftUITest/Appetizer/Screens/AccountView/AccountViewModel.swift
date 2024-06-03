//
//  AccountViewModel.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 12/04/24.
//

import Foundation
import SwiftUI

final class AccountViewModel:ObservableObject{
    
    @AppStorage ("user") private var userData:Data?
    @Published var user = User()
    @Published var alertItem:AlertAppetizer?
    
    var isValidForm:Bool{
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContextAppetizer.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContextAppetizer.invalidEmailFormat
            return false
        }
        return true
    }
    
    func saveChanges(){
        guard isValidForm else { return }
        
        do{
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContextAppetizer.userSaveSuccess
        } catch{
            alertItem = AlertContextAppetizer.invalidUserData
        }
    }
    
    func retriveUser(){
        guard let getUserData = userData else {return}
        do{
            user = try JSONDecoder().decode(User.self, from: getUserData)
            
        }catch{
            
        }
    }
}
