import SwiftUI

struct ListView: View {

    // MARK: - Private Properties

    private let products: [Product] = ProductList.values()

    // MARK: - Body

    var body: some View {
        List (products, id: \.id) { product in
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(product.name)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text(product.value)
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
