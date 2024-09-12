//
//  WalkMyDogAppApp.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

import SwiftUI
import GoogleMaps

@main
struct WalkMyDogAppApp: App {
    
    init() {
        GMSServices.provideAPIKey("Insert API Key")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
