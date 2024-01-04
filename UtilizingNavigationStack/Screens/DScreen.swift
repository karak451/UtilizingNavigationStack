//
//  DScreen.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

struct DScreen: View{
    @EnvironmentObject var dm: DataManager
    @Binding var navPath: NavigationPath
    
    var body: some View{
        ZStack{
            Text("Hello! This is D-Screen. You will be navigated to \(dm.directionsDictionary[dm.directionFromDScreen] ?? "default value") in 3 seconds")
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                navPath.append(dm.directionFromDScreen)
            }
        }
    }
}
