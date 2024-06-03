//
//  AppetizerListCell.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 09/04/24.
//

import SwiftUI

struct AppetizerListCell: View {
    var appetizer:Appetizer
    
    var body: some View {
        HStack{
            
            AsyncImageGenerator(appetizerImageURL: appetizer.imageURL)
                .frame(width: 120,height: 90)
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price,specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        
    }
}


