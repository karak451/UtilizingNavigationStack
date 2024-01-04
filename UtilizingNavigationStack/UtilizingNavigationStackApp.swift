//
//  UtilizingNavigationStackApp.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

@main
struct UtilizingNavigationStackApp: App {

    let DM = DataManager()
    @State var navPath = NavigationPath()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navPath){
                
                MainScreen(navPath: $navPath).environmentObject(DM).navigationDestination(for: Int.self){ code in
                        switch code {
                        case 1: BScreen(navPath: $navPath).environmentObject(DM)
                        case 2: CScreen(navPath: $navPath).environmentObject(DM)
                        case 3: DScreen(navPath: $navPath).environmentObject(DM)
                        default: MainScreen(navPath: $navPath).environmentObject(DM)
                        }
                    }
            }
        }
    }
}
