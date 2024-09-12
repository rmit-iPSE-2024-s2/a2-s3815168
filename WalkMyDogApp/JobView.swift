
//
//  MainMenuView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//
import GoogleMaps
import SwiftUI

struct JobView: View {
   
    var body: some View {
        VStack {
            
            Spacer().frame(height: 40)
            
            // Text box at the top
            Text("Look for Jobs Available")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                             
            Spacer().frame(height: 20)
            // Search bar placeholder (for future enhancement)
            TextField("Search area", text: .constant(""))
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 20)
                
            Spacer().frame(height: 45)
            
            // Google Map view
            GoogleMapView()
                .frame(height: 300)
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            
            Spacer().frame(height: 90)
            
   
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
            
            Spacer(minLength: 90)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        JobView()
    }
}

#Preview {
    JobView()
}


