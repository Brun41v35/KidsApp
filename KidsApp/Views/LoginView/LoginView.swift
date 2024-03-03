import SwiftUI

struct LoginView: View {

    // MARK: - Private Properties

    @State private var textFieldText: String = ""
    @State private var passwordText: String = ""
    @State private var isAnimated: Bool = false

    // MARK: - Body

    var body: some View {

        NavigationView {

            ZStack {
                Color.yellow.opacity(0.2)
                    .ignoresSafeArea()

                VStack {

                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.yellow.opacity(0.3))
                        .frame(width: 150, height: 150)
                        .padding()

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

                    NavigationLink(destination: ListView()) {
                        Text("Login".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textFieldHasValue() ? Color.gray.opacity(0.3) : Color.yellow.opacity(0.3))
                            .clipShape(.buttonBorder)
                            .foregroundStyle(.white)
                            .font(.headline)
                    }
                    .disabled(textFieldHasValue())

                    Spacer()
                }
                .padding()
                .navigationTitle("Login")
            }
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
