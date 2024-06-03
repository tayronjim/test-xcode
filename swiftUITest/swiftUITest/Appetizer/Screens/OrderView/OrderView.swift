//
//  OrderView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 01/04/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order:Order
    @State private var showEmptyState = true
    
    var body: some View {
        
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){appetizer in
                            AppetizerListCell(appetizer:appetizer)
                        }
                        .onDelete(perform: {index in
                            order.deleteItems(at: index)
                            showEmptyState = order.items.isEmpty
                        })
                    }
                    .listStyle(.plain)
                
                    Button(action: {
                        
                    }, label: {
                        btnSendStyle(price: order.totalPrice)
                        //btnSendStyle(price: 10.0)
                    })
                }
                
                Group {
                    if showEmptyState {
                        EmptyState()
                    }
                }
                
            }.navigationTitle("Order")
            
            
        }.onAppear(){
            showEmptyState = order.items.isEmpty
        }
        
    }
    
    
    
}

#Preview {
    let order = Order()
    order.items = order.clearData
            return OrderView()
        .environmentObject(order)
     
}
