//
//  PopPup.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 10/04/24.
//

import SwiftUI

struct PopPupDetailView: View {
    @Binding var isShowingDetail: Bool
    @StateObject var order = Order()
    
    var appetizer:Appetizer
    
    var body: some View {
        ZStack{
                
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color(.white))
                .opacity(0.7)
                
            VStack{
                
                AsyncImageGenerator(appetizerImageURL: appetizer.imageURL)
                
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color(.darkGray))
                
                Text(appetizer.description)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding([.horizontal], 30.0)
                    .padding([.top ], 10.0)
                
                Spacer()
                
                HStack(spacing: 40.0){
                    Values(titulo: "Calorias", valor: appetizer.calories)
                    Values(titulo: "Proteinas", valor: appetizer.protein)
                    Values(titulo: "Carbos", valor: appetizer.carbs)
                }
                
                
                Spacer()
                Button{
                    order.add(appetizer)
                    isShowingDetail = false
                }label:{
                    btnAddStyle(price: appetizer.price)
                }
                
                
                
            }
            .frame(width: 300, height: 500)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .overlay(Button{
                isShowingDetail = false
            }label: {
                ZStack{
                    Circle()
                        .frame(width: 30,height: 30)
                        .foregroundColor(Color(.white))
                        .opacity(0.6)
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            },alignment: .topTrailing)
        }
        
        
        
    }
}

#Preview {
    PopPupDetailView(isShowingDetail: .constant(true), appetizer: MockDataAppetizer.sampleAppetizer)
}

struct Values: View {
    
    let titulo:String
    let valor:Int
    
    var body: some View {
        VStack{
            Text(titulo)
                .font(.caption)
            Text("\(valor)")
                .italic()
                .foregroundStyle(Color(.gray))
                
        }
        
    }
}
