import SwiftUI

struct AuthenticationRootView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        switch viewModel.state {
        case .signedIn:
            //TODO: Replace with the content that should be displayed when a user has logged in
            VStack {
                Text("You are logged in")
                Button("Sign out") {
                    viewModel.signOut()
                }
            }
        case .notSignedIn:
            SignInScreen().environmentObject(viewModel)
        }
    }
}

#Preview {
    AuthenticationRootView()
}

extension AuthenticationRootView {

    class ViewModel: ObservableObject {

        let authService: AuthenticationService

        init(
            authService: AuthenticationService = MockAuthenticationService()  //TODO: Replace with actual auth service
        ) {
            self.authService = authService
        }

        @Published var state: AuthenticationState = .notSignedIn
        @Published var errorMessage: String = "Error message"

        enum AuthenticationState {
            case signedIn, notSignedIn
        }

        func signInWithEmailAndPassword(email: String, password: String) async {
            do {
                try await authService.signInWithEmailAndPassword(
                    email: email,
                    password: password
                )
                state = .signedIn
            } catch {
                errorMessage = error.localizedDescription
            }
        }

        func registerWithEmailAndPassword(email: String, password: String) async
        {
            do {
                try await authService.registerWithEmailAndPassword(
                    email: email,
                    password: password
                )
                state = .signedIn
            } catch {
                errorMessage = error.localizedDescription

            }
        }

        func signOut() {
            do {
                try authService.signOut()
                state = .notSignedIn
            } catch {
                errorMessage = error.localizedDescription
            }
        }

    }

}