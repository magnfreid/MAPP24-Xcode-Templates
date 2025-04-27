import SwiftUI

struct ___FILEBASENAME___: View {
    @Binding var emailField: String
    @Binding var passwordField: String
    @Binding var errorMessage: String
    var body: some View {
        VStack {
            Form {
                Section("Email") {
                    TextField("Enter email adress...", text: $emailField)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                }
                Section("Password") {
                    SecureField("Enter password...", text: $passwordField)
                        .textInputAutocapitalization(.never)
                }
            }
            .frame(maxHeight: 240)
            ErrorText(errorMessage)
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}


#Preview {
    ___FILEBASENAME___(
        emailField: .constant("test@test.com"),
        passwordField: .constant("123456"),
        errorMessage: .constant("Error message here")
    )
}