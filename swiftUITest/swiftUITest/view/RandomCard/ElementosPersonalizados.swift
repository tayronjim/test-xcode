//
//  ElementosPersonalizados.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 22/03/24.
//

import Foundation
import SwiftUI

struct MyBtn3: View {
    
    let text: String
    let color: Color
    let icon: String
    
    init(text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = ""
    }
    
    init(icon: String, text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = icon
    }
    
    var body: some View {
        Button(text){}
            .font(.title)
            .offset(x: 10.0)
            .foregroundColor(color)
            .padding(.horizontal)
            .fontWeight(.bold)
            .overlay(
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(color)
                        .font(.system(size: 24.0))
                }
                  .offset(x: -10.0)
                  .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
            )
            .frame(maxWidth: 400, maxHeight: 70)
            .background(Color(color).opacity(0.2))
            .cornerRadius(15)
    }
}

struct MyBtn2: View {
    
    let text: String
    let color: Color
    let icon: String
    
    init(text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = ""
    }
    
    init(icon: String, text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = icon
    }
    
  var body: some View {
     
    Text(text)
      .font(.title)
      .offset(x: 10.0)
      .foregroundColor(.white)
      .padding(.horizontal)
      .fontWeight(.bold)
      .overlay(
          HStack {
              Image(systemName: icon)
                  .foregroundColor(.white)
                  .font(.system(size: 24.0))
          }
            .offset(x: -10.0)
            .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
      )
      .frame(maxWidth: 400.0, maxHeight: 70.0)
      .background(color)
      .cornerRadius(20.0)
      
  }
}

struct MyBtn1: View {
    @State private var isPressed = false
    var btnBrightness: Double {
        isPressed ? 0.30 : 0.0
    }
    
    let text: String
    let color: Color
    let icon: String
    
    init(text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = ""
    }
    
    init(icon: String, text: String, color: Color) {
        self.text = text
        self.color = color
        self.icon = icon
    }

  var body: some View {
     
    Text(text)
      .font(.title)
      .frame(maxWidth: 200.0, maxHeight: 70.0)
      .background(color).brightness(btnBrightness)
      .foregroundColor(.white)
      .fontWeight(.bold)
      .cornerRadius(20.0)
      .gesture(
        DragGesture(minimumDistance: 0)
              .onChanged { _ in
                  self.isPressed = true
              }
              .onEnded { _ in
                  self.isPressed = false
              }
      )
      
  }
}
