import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published private var user: User
    
    var id: Int {
        return user.id
    }
    
    var name: String {
        return user.name
    }
    
    var email: String {
        return user.email
    }
    
    init(user: User) {
        self.user = user
    }
}
