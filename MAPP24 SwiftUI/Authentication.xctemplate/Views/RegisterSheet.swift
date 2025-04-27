import SwiftUI

struct RegisterSheet: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authViewModel: AuthenticationRootView.ViewModel
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Text("Register")
                .font(.title)
            CredentialsForm(
                email: $email,
                password: $password,
                errorMessage: $authViewModel.errorMessage
            )
            Spacer()
            Button("Register") {
                Task {
                    await authViewModel.registerWithEmailAndPassword(
                        email: email,
                        password: password
                    )
                    dismiss()
                }
            }
            .disabled(email.isEmpty || password.isEmpty)
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .padding()
    }
}

#Preview {
    RegisterSheet().environmentObject(AuthenticationRootView.ViewModel())
}
