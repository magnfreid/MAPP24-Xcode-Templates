import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var authViewModel: AuthenticationRootView.ViewModel

    @State var email: String = ""
    @State var password: String = ""
    @State var registerSheetPresent = false
    var body: some View {
        VStack {
                Text("Sign in")
                    .font(.title)
                CredentialsForm(
                    email: $email,
                    password: $password,
                    errorMessage: $authViewModel.errorMessage
                )
                Spacer()
                Button("Sign in") {
                    Task {
                        await authViewModel.signInWithEmailAndPassword(
                            email: email,
                            password: password
                        )
                    }
                }
                .disabled(email.isEmpty || password.isEmpty)
                .buttonStyle(.borderedProminent)
                .padding()
            
            Button("Register here") {
                registerSheetPresent = true
            }
        }
        .padding()
        .sheet(isPresented: $registerSheetPresent) {
            RegisterSheet().environmentObject(authViewModel)
        }
    }
}

#Preview {
    SignInScreen().environmentObject(AuthenticationRootView.ViewModel())
}