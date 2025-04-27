protocol AuthenticationService {
    func signInWithEmailAndPassword(email: String, password: String) async throws
    func registerWithEmailAndPassword(email: String, password: String) async throws
    func signOut() throws
}

//TODO: Replace with actual authentication service
class MockAuthenticationService : AuthenticationService {
    func signInWithEmailAndPassword(email: String, password: String) async throws {
        print("Signed in as '\(email)' with password: \(password)")
    }
    
    func registerWithEmailAndPassword(email: String, password: String) async throws {
        print("Registered as '\(email)' with password: \(password)")
    }
    
    func signOut() throws {
        print("Signed out!")
    }
    
}