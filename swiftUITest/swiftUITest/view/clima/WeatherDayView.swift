//
//  WeatherDayView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 26/03/24.
//

import SwiftUI

struct WeatherDayView: View {
    var dia:String
    var image:String
    var temp:Int
    
    init(dia: String, image: String, temp: Int) {
        self.dia = dia
        self.image = image
        self.temp = temp
    }
    
    
    var body: some View {
        VStack( content: {
            Text(dia).font(.system(size: 18)).foregroundStyle(.white).fontWeight(.semibold)
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40,height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 25))
                .foregroundStyle(.white)
        })
    }
}
