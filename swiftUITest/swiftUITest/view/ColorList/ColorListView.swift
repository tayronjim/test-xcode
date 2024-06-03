//
//  ColorListView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 21/03/24.
//

import SwiftUI

struct ColorListView: View {
    
    var body: some View {
        let colors: [Color] = addRandomColors()
        NavigationView{
            ScrollView {
                ForEach(colors, id: \.self) { color in
                    NavigationLink(destination: FullColorView(color: color)){
                        ColorView(color: color)
                    }
                }
            }.navigationTitle("Colores")
        }
    }
}

func addRandomColors()->[Color]{
    var colors: [Color] = []
    for _ in 0...30{
        colors.append(createRandomColor())
    }
    return colors
}

func createRandomColor()->Color{
    let randomColor = Color(red: CGFloat.random(in: 0...1),
                              green: CGFloat.random(in: 0...1),
                              blue: CGFloat.random(in: 0...1))
    return randomColor
}

#Preview {
    ColorListView()
}
