import Foundation
import SwiftUI

// Model for User Credentials
struct UserCredentials: Codable {
    var username: String
    var password: String
}

// Manager to handle user data logic
class UserDataModel: ObservableObject {
    @Published var users: [UserCredentials] = [] {
        didSet {
            saveToUserDefaults()
        }
    }
    
    init() {
        loadFromUserDefaults()
    }

    // Save a new user
    func saveUser(username: String, password: String) {
        let newUser = UserCredentials(username: username, password: password)
        users.append(newUser)
    }
    
    // Authenticate user by checking username and password
    func authenticateUser(username: String, password: String) -> Bool {
        return users.contains { $0.username == username && $0.password == password }
    }
    
    // Save users array to UserDefaults
    private func saveToUserDefaults() {
        if let encoded = try? JSONEncoder().encode(users) {
            UserDefaults.standard.set(encoded, forKey: "savedUsers")
        }
    }
    
    // Load users array from UserDefaults
    private func loadFromUserDefaults() {
        if let savedData = UserDefaults.standard.data(forKey: "savedUsers"),
           let decodedUsers = try? JSONDecoder().decode([UserCredentials].self, from: savedData) {
            self.users = decodedUsers
        }
    }
}
