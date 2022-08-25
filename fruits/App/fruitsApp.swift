//
//  fruitsApp.swift
//  fruits
//
//  Created by alieu samb on 30/01/2022.
//

import SwiftUI

@main
struct fruitsApp: App {
    @AppStorage("isOnboarding") var isOnbaording : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnbaording){
                OnBoardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
