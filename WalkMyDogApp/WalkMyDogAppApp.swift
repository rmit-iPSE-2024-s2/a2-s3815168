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
        GMSServices.provideAPIKey("AIzaSyBI_k6IOKMRg3wPeH-_3n2hozNGuQM2KI4")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
