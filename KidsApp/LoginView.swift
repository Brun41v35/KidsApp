import SwiftUI

struct LoginView: View {

    // MARK: - Private Properties

    @State private var textFieldText: String = ""
    @State private var passwordText: String = ""

    // MARK: - Body

    var body: some View {

        NavigationView {

            VStack {
                TextField("Username",
                          text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).clipShape(.buttonBorder))
                .font(.headline)

                SecureField("Password", text: $passwordText)
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(.buttonBorder))
                    .font(.headline)
                    .textContentType(.password)

                Button(action: {
                    login()
                }, label: {
                    Text("login".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textFieldHasValue() ? Color.gray.opacity(0.3) : Color.blue)
                        .clipShape(.buttonBorder)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(textFieldHasValue())
            }
            .padding()
            .navigationTitle("Login 🐣")
        }
    }

    // MARK: - Private Methods

    private func textFieldHasValue() -> Bool {
        return textFieldText.isEmpty || passwordText.isEmpty
    }

    private func login() {
        print("Go to list view..")
    }
}

// MARK: - Preview

#Preview {
    LoginView()
}
