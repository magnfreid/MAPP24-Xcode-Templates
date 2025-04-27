import SwiftUI

struct CredentialsForm: View {
    @Binding var email: String
    @Binding var password: String
    @Binding var errorMessage: String
    var body: some View {
        VStack {
            Form {
                Section(
                    content: {
                        TextField("Enter email address...", text: $email)
                    },
                    header: {
                        Text("Email")
                    }
                )
                Section(
                    content: {
                        SecureField("Enter password...", text: $password)
                    },
                    header: {
                        Text("Password")
                    }
                )
            }
            .padding(.top, 50)
            Text(errorMessage)
                .font(.caption)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    CredentialsForm(
        email: .constant(""),
        password: .constant(""),
        errorMessage: .constant("")
    )
}
