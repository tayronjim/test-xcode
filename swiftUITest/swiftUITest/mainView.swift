//
//  mainView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 14/03/24.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        ScrollView{
            VStack{
                MapUIView().frame(height: 400)
                ContentView().frame(height: 200)
                Divider()
                imageView()
            }
        }
    }
}

#Preview {
    mainView()
    
}
