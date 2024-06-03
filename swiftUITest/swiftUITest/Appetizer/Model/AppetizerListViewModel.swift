//
//  AppetizerListViewModel.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 10/04/24.
//

import SwiftUI

final class AppetizerListViewModel:ObservableObject{
    @Published var appetizers:[Appetizer] = []
    @Published var alertItem: AlertAppetizer?
    @Published var isLoading = false
    
    func getAppetizers() async {
        isLoading = true
        do {
            appetizers = try await NetworkManager.shared.getAppetizers()
            isLoading = false
        } catch {
            isLoading = false
            switch error {
            case APError.invalidData:
                alertItem = AlertContextAppetizer.invalidData
            case APError.invalidResponse:
                alertItem = AlertContextAppetizer.invalidResponse
            case APError.invalidURL:
                alertItem = AlertContextAppetizer.invalidURL
            case APError.unableToComplete:
                alertItem = AlertContextAppetizer.unableToComplete
            default:
                // Handle any other potential errors
                print(error.localizedDescription)
            }
        }
    }
    
    
    func getAppetizersX(){
        isLoading = true
        NetworkManager.shared.getAppetizersX(completed: {result in
            DispatchQueue.main.async{ [self] in
                isLoading = false
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error{
                    case .invalidData:
                        alertItem = AlertContextAppetizer.invalidData
                    case .invalidResponse:
                        alertItem = AlertContextAppetizer.invalidResponse
                    case .invalidURL:
                        alertItem = AlertContextAppetizer.invalidURL
                    case .unableToComplete:
                        alertItem = AlertContextAppetizer.unableToComplete
                    }
                }
            }
            
        })
    }
    
}
