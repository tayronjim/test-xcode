//
//  FrameworkTitle.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 29/03/24.
//

import SwiftUI

struct FrameworkTitle: View {
    
    var framework:Framework
    
    var body: some View {
        
            VStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90,height: 90)
                    
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.label))
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
            }
        
    }
}

struct FrameworkTitleHorizontal: View {
    
    var framework:Framework
    
    var body: some View {
        
            HStack{
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 90,height: 90)
                    
                Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
                    .padding()
            }
        
    }
}
