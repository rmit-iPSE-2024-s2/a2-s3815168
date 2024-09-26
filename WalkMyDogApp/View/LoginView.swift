//
//  ContentView.swift
//  WalkMyDogApp
//
//  Created by Artur and Jonathan on 1/9/2024.
//

import SwiftUI

struct LoginView: View {
    // Variables for username and password
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false
    @State private var showRegister: Bool = false
    
    @ObservedObject var userDataModel: UserDataModel
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Logo at the top
                Image("logo")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding(.vertical, 30.0)
                    .clipShape(Circle())   // Makes the logo round
                    .shadow(color: .gray, radius: 10, x: 10, y: 10) // Adds shadow
                
                
                // App Name
                Text("WalkMyDog")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer().frame(height: 30)
                
                // Username field
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                // Password field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40.0)
                    .padding(.top , 10)
                
                Spacer().frame(height: 90)
                
                // Login button with error handling
                Button(action: {
                    if userDataModel.authenticateUser(username: username, password: password) {
                        isLoggedIn = true
                    } else {
                        alertMessage = "Incorrect username or password"
                        showAlert = true
                    }
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(90)
                        .padding(.horizontal, 40)
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Login Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                }
                
                .navigationDestination(isPresented: $isLoggedIn) {
                    MainMenuView(username: username) // Navigate to MainMenuView when login is successful
                }
                
                Button(action: {
                
                }) {
                    Text("Login with Auth0")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(90)
                        .padding(.horizontal, 40)
                }
        
                
                
                
                // Register button
                Button(action: {
                    showRegister = true
                }) {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(90)
                        .padding(.horizontal, 40)
                }
                
                
                .navigationDestination(isPresented: $showRegister) {
                    RegisterView(userDataModel: userDataModel) // Pass the same UserDataModel instance
                }
                
                Spacer()
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
    
}

#Preview {
    LoginView(userDataModel: UserDataModel())
}

