//
//  WalkerView.swift
//  WalkMyDogApp
//
//  Created by Artur on 1/9/2024.
//

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

struct Walker: Identifiable {
    let id = UUID()
    let name: String
}


struct WalkerView: View {
    // Hardcoded data
    let walkers = [
        Walker(name: "Adam"),
        Walker(name: "Bob"),
        Walker(name: "Craig")
    ]
    
    var body: some View {
        
        VStack {
            // Text box at the top
            Text("Search Walkers")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                             
            Spacer().frame(height: 20)
            // Search bar placeholder (for future enhancement)
            TextField("Search name", text: .constant(""))
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 20)
                
            
            // List of Walkers
            List(walkers) { walker in
                HStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.black)
                    
                    Text(walker.name)
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.leading, 10)
                }
                .padding(.vertical, 5)
            }
            .listStyle(PlainListStyle()) // Ensures a clean look without separators
            
            Spacer()
            
            // Back Button
            Button(action: {
                // Action to go back or close the screen
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
            
            Spacer().frame(height: 20)
            
        }
        
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct WalkerListView_Previews: PreviewProvider {
    static var previews: some View {
        WalkerView()
    }
}



#Preview {
    WalkerView()
}
