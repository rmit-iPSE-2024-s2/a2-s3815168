//
//  ContentView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

import SwiftUI

struct LoginView: View {
    // Variables for username and password
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            // Logo at the top
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.vertical, 70.0)
                .clipShape(Circle())   // Makes the logo round
                .shadow(color: .gray, radius: 10, x: 10, y: 10) // Adds shadow
                
            
            // App Name
            Text("WalkMyDog")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.top, 20)
            
            Spacer().frame(height: 50)
            
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
            
            Spacer().frame(height: 40)
            
            // Login button
            Button(action: {
                // login action will be added here
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
            
            // Register button
            Button(action: {
                // Register action will be added here
            }) {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(90)
                    .padding(.horizontal, 40)
                    .padding(.top, 10)
            }
            
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

#Preview {
    LoginView()
}


// Note for Jonothan: use this code as starting point for next screens
