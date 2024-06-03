//
//  CiudadView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 26/03/24.
//

import SwiftUI

struct CiudadView: View {
    var ciudad:String
    
    var body: some View {
        
        Text(ciudad)
            .foregroundColor(.white)
            .font(.system(size: 32,weight: .medium, design: .default))
            .padding()
        
        
    }
}


