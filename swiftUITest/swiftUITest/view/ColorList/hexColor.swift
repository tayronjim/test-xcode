//
//  hexColor.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 21/03/24.
//

import Foundation
import SwiftUI

extension Color {
    func toHex() -> String {
        guard let components = cgColor?.components else { return "" }
        
        let r = Int(components[0] * 255.0)
        let g = Int(components[1] * 255.0)
        let b = Int(components[2] * 255.0)
        
        return String(format: "#%02X%02X%02X", r, g, b)
    }
}
