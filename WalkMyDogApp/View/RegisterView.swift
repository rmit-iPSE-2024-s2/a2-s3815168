//
//  RegisterView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

import SwiftUI

struct RegisterView: View {
    // Variables for username and password and email
    @ObservedObject var userDataModel: UserDataModel
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    // Environment variable to dismiss the view
     @Environment(\.dismiss) var dismiss
    
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
            
            // Email field
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 40)
                .padding(.top, 10)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            
            // Password field
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 40.0)
                .padding(.top, 10)
            
            Spacer().frame(height: 40)
            
            // Register button
            Button(action: {
                userDataModel.saveUser(username: username, password: password)
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
            
            // Back button
            Button(action: {
                dismiss()  // This dismisses the RegisterView and goes back to the LoginView
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
            
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView(userDataModel: <#UserDataModel#>)
//    }
//}
//
//#Preview {
//    RegisterView(userDataModel: <#UserDataModel#>)
//}

