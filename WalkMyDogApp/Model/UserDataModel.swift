import Foundation
import SwiftData

// Model for User Credentials
struct UserCredentials {
    var username: String
    var password: String
}

// Manager to handle user data logic
class UserDataModel: ObservableObject {
    @Published var users: [UserCredentials] = []
    
    // Save a new user
    func saveUser(username: String, password: String) {
        let newUser = UserCredentials(username: username, password: password)
        users.append(newUser)
        // Add your logic for saving with SwiftData here if needed
    }
    
    // Authenticate user by checking username and password
    func authenticateUser(username: String, password: String) -> Bool {
        return users.contains { $0.username == username && $0.password == password }
    }
}
