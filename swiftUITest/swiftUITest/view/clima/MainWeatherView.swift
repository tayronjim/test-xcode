//
//  MainWeatherView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 26/03/24.
//

import SwiftUI

struct MainWeatherView: View {
    
    var image:String
    var temp:Int
    
    var body: some View {
        VStack(spacing: 8, content: {
            
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            
            Text("\(temp)°")
                .font(.system(size: 70))
                .foregroundStyle(.white)
            
            
        })
    }
}
