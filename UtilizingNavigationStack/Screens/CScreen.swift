//
//  CScreen.swift
//  UtilizingNavigationStack
//
//  Created by Sudar Istvan on 2024. 01. 04..
//

import SwiftUI

struct CScreen: View{
    @EnvironmentObject var dm: DataManager
    @Binding var navPath: NavigationPath
    
    var body: some View{
        VStack{
            Text(dm.message)
                .font(.largeTitle)
            
            Text("From this screen hitting the BACK button, you will be navigated straight back to MainScreen")
                .font(.body)
            
        }.navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    navPath.append(0)
                } label: {
                    Text("BACK")
                        .padding(5)
                        .font(.title3)
                        .background(.yellow)
                        .cornerRadius(5)
                }
            }
        }
    }
}
