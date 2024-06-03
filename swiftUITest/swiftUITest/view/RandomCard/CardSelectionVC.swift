//
//  CardSelectionVC.swift
//  swiftUITest
//
//  Created by Tayron Jimenez on 24/03/24.
//

import Foundation
import UIKit
import SwiftUI


var timer: Timer!


let cards: [Image] = [
    Image("2C"),
    Image("2D"),
    Image("2P"),
    Image("2T"),
    Image("3C"),
    Image("3D"),
    Image("3P"),
    Image("3T"),
    Image("11C"),
    Image("12C"),
    Image("13C"),
    
]

let cardsName: [String] = [
    "2C",
    "2D",
    "2P",
    "2T",
    "3C",
    "3D",
    "3P",
    "3T",
    "11C",
    "12C",
    "13C",
    
]


/*
func startTimer(){
    
    timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
}

func showRandomImage(){
    cardImageView.image = cards.randomElement() ?? UIImage(named: "2C")
}
*/
