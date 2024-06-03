//
//  FullColorView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 21/03/24.
//

import SwiftUI



struct FullColorView: View {
    
    var color:Color?
    
    var body: some View {
        HStack{
                Text("Hex:\(color!.toHex()) ")
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color(color ?? .blue))
    }
}

#Preview {
    FullColorView(color: .blue)
}
