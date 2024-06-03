//
//  Appetizer.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 01/04/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            
            AppetizerListView()
                .tabItem {
                    Label(
                        title: { Text("Home") },
                        icon: { Image(systemName: "house") }
                    )
                }
            
            OrderView()
                .tabItem {
                    Label(
                        title: { Text("Order") },
                        icon: { Image(systemName: "bag") }
                    )
                }.badge(order.items.count)
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
        }
        .tint(Color("brandPrimary"))
        
    }
}

#Preview {
    
    let order = Order()
    order.items = order.clearData
            return AppetizerTabView()
        .environmentObject(order)
}
