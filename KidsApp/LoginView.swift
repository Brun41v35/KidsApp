import SwiftUI

struct LoginView: View {
    
    @State private var textFieldText: String = ""
    @State private var passwordText: String = ""
    @State private var disableButton: Bool = true
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                TextField("Username",
                          text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).clipShape(.buttonBorder))
                .font(.headline)
                
                TextField("Password",
                          text: $passwordText)
                .padding()
                .background(Color.gray.opacity(0.3).clipShape(.buttonBorder))
                .font(.headline)
                
                Button(action: {
                    
                }, label: {
                    Text("login".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textFieldHasValue() ? Color.gray.opacity(0.3) : Color.blue)
                        .clipShape(.buttonBorder)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(disableButton)
            }
            .padding()
            .navigationTitle("Login")
        }
    }
    
    // MARK: - Private Methods
    
    private func textFieldHasValue() -> Bool {
        return textFieldText.isEmpty || passwordText.isEmpty
    }
}

#Preview {
    LoginView()
}
