//
//  NetworkManager.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 09/04/24.
//

import Foundation

final class NetworkManager{
    static let shared = NetworkManager()
    
    static let basicURL = "http://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let appetizerURL = basicURL + "appetizers"
    
    private init(){
        
    }
    
    func getAppetizers() async throws -> [Appetizer] {
        guard let url = URL(string: appetizerURL) else {
            throw APError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw APError.invalidResponse
        }

        let decodedData = try JSONDecoder().decode(AppetizerRespose.self, from: data)
        return decodedData.request
    }
    
    
    func getAppetizersX(completed: @escaping(Result<[Appetizer], APError>)->Void){
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decodedResponse = try JSONDecoder().decode(AppetizerRespose.self, from: data)
                completed(.success(decodedResponse.request))
                
            } catch{
                completed(.failure(.invalidData))
            }
        }
        task.resume()
        
    }
    
}
