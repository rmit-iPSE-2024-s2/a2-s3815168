//
//  WalkMyDogAppApp.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

import SwiftUI


@main
struct WalkMyDogAppApp: App {
    @StateObject private var userDataModel = UserDataModel()

    var body: some Scene {
        WindowGroup {
            LoginView(userDataModel: userDataModel)
        }
    }
}
