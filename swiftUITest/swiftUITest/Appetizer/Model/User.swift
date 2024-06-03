//
//  User.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 15/04/24.
//

import Foundation

struct User:Codable{
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDay = Date()
    var extraNapkins = false
    var frequentRefill = false
}
