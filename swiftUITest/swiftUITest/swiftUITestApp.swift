//
//  swiftUITestApp.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 11/03/24.
//

import SwiftUI

@main
struct swiftUITestApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
