//
//  EnviorementView.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 16/03/24.
//

import SwiftUI

struct EnviorementView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.nombre).font(.title)
    }
}

#Preview {
    EnviorementView().environmentObject(UserData())
}
