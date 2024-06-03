//
//  Order.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 15/04/24.
//

import Foundation
import SwiftUI

final class Order:ObservableObject{
    @Published var items:[Appetizer] = []
    
    @Published var clearData:[Appetizer] = [Appetizer(
            id: 0,
            name: "",
            description: "",
            price: 0.0,
            imageURL: "",
            calories: 0,
            protein: 0,
            carbs: 0
    )]
    
    var totalPrice:Double{
        items.reduce(0){$0 + $1.price}
    }
    
    func add(_ appetizer:Appetizer){
        items.append(appetizer)
    }
    
    func deleteItems(at offSet: IndexSet){
        items.remove(atOffsets: offSet)
        
    }
    
}
