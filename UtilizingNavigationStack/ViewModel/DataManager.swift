//
//  DataManager.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

class DataManager: ObservableObject{

    @Published var directionsDictionary: [Int : String] = [
        0 : "Main Screen",
        1 : "B-Screen",
        2 : "C-Screen",
        3 : "D-Screen"
    ]
    @Published var directionFromBScreen: Int = 0
    @Published var directionFromDScreen: Int = 0
    @Published var message: String = ""
    
}
