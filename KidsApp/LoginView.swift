import SwiftUI

struct LoginView: View {

    @State private var textFieldText: String = ""
    @State private var passwordText: String = ""
    @State private var disableButton: Bool = true

    var body: some View {

        NavigationView {}
    }

    // MARK: - Private Methods

    private func loginButton() -> Bool {
        return textFieldText.isEmpty && passwordText.isEmpty
    }
}

#Preview {
    LoginView()
}
