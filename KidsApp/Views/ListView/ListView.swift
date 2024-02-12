import SwiftUI

struct ListView: View {

    var body: some View {

        List (0..<20) { item in
            HStack {
                VStack {
                    Text("Baby Carriage")
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text("R$ 100,00")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.yellow.opacity(0.3))
    }
}

#Preview {
    ListView()
}
