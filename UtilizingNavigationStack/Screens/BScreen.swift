//
//  BScreen.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

struct BScreen: View{
    @EnvironmentObject var dm: DataManager
    @Binding var navPath: NavigationPath
    
    var body: some View{
        VStack{
            Text("Hello! This is B-Screen")
                .font(.largeTitle)
            
            Text("This screen uses values created on the MainScreen. But MainScreen does not pass these values, it simply updates the DataManager, and B-Screen can access to DataManager")
                .font(.body)
            
            Button("Navigate to \(dm.directionsDictionary[dm.directionFromBScreen] ?? "default value")"){
                navPath.append(dm.directionFromBScreen)
            }
        }.onAppear{
            //in this example dm.message will be displayed on the next screen, but is declared here
            dm.message = "I am navigated from B-Screen"
        }
    }
}
