//
//  ContentView.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject var dm: DataManager
    @Binding var navPath: NavigationPath
    
    var body: some View {
        VStack {
            Button("Navigate to B-Screen and pass a value"){
                dm.directionFromBScreen = 2
                navPath.append(1)
            }
            
            Button("Navigate to D-Screen"){
                dm.directionFromDScreen = 1
                navPath.append(3)
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .padding()
    }
}

