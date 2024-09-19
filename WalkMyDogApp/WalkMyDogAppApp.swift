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
    @StateObject private var userDataModel = UserDataModel()

    init() {
        GMSServices.provideAPIKey("Insert API Key")
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView(userDataModel: userDataModel)
        }
    }
}
