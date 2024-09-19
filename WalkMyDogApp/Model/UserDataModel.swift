import Foundation
import SwiftData

@Model
struct UserCredentials {
    @Field var username: String
    @Field var password: String
}

class UserDataManager: ObservableObject {
    @Published var users: [UserCredentials] = []
    
    func saveUser(username: String, password: String) {
        let newUser = UserCredentials(username: username, password: password)
        users.append(newUser)
        // Logic for persisting to SwiftData goes here
    }
    
    func authenticateUser(username: String, password: String) -> Bool {
        return users.contains { $0.username == username && $0.password == password }
    }
}
