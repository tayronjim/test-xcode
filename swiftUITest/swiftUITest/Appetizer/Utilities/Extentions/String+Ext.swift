//
//  String+Ext.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 12/04/24.
//

import Foundation

extension String{
    var isValidEmail:Bool{
        let emailFormat = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
