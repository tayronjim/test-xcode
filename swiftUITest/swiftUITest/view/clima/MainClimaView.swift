//
//  MainClimaView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 26/03/24.
//

import SwiftUI

struct MainClimaView: View {
    @State var isNight = false
    var body: some View {
        ZStack {
            
            FondoView(isNight: $isNight)
            
            VStack{
                CiudadView(ciudad:"Ciudad Edo.")
                
                MainWeatherView(image: "cloud.sun.fill", temp: 30)
                Spacer()
                HStack(){
                    Spacer()
                    WeatherDayView(dia:"LUN",image: "cloud.sun.fill",temp:30)
                    Spacer()
                    WeatherDayView(dia:"MAR",image: "sun.max.fill",temp:30)
                    Spacer()
                    WeatherDayView(dia:"MIE",image: "cloud.sun.fill",temp:30)
                    Spacer()
                    WeatherDayView(dia:"JUE",image: "wind.snow",temp:30)
                    Spacer()
                    WeatherDayView(dia:"VIE",image: "snow",temp:30)
                    Spacer()
                    WeatherDayView(dia:"SAB",image: "cloud.sun.fill",temp:30)
                    Spacer()
                    WeatherDayView(dia:"DOM",image: "cloud.sun.fill",temp:30)
                    Spacer()
                    
                }.padding(.bottom,60)
                
                
                Button("Boton del Clima"){
                    print("tap")
                    isNight.toggle()
                }.buttonStyle(EstiloBoton())
                
                
               
                
               
                
                
                
            }
            
        }
        
        
    }
}

#Preview {
    MainClimaView()
}



struct EstiloBoton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.blue)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.mint.gradient)
            .cornerRadius(10)
            .padding(.bottom, 30)
    }
}




