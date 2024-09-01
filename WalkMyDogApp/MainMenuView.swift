//
//  MainMenuView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

//
//  RegisterView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

import SwiftUI

struct MainMenuView: View {
    // Variables for username and password and email
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            // Logo now became tappable, you can press it for extra menu options
            Menu {
                            Button(action: {
                                // Action 1 code
                                print("Settings selected")
                            }) {
                                Text("Settings")
                            }
                            
                            Button(action: {
                                // Action 2 code
                                print("Help selected")
                            }) {
                                Text("Help")
                            }
                        } label: {
                            Image("logo")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle()) // Makes the logo round
                                .shadow(color: .gray, radius: 10, x: 0, y: 10) // Adds shadow
                        }
                        .padding(.vertical, 70.0)
            
            

            Spacer().frame(height: 45)
            
            // Look for a Job button
            Button(action: {
                // button action will be added here
            }) {
                Text("Look for a Job")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(90)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
            
            // Search Walkers button
            Button(action: {
                //  button action will be added here
            }) {
                Text("Search Walkers")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(90)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
            
            // Track Activity button
            Button(action: {
                //  button action will be added here
            }) {
                Text("Track Activity")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(90)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
         
            
            Spacer().frame(height: 200)
            
   
            // Back button
            Button(action: {
                // Back button action will be added here
            }) {
                Text("Back")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(90)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
            
            Spacer(minLength: 45)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}

#Preview {
    MainMenuView()
}


