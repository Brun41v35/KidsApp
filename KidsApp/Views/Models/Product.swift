import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let value: String
}

struct ProductList {

    static func values() -> [Product] {

        return [
            Product(name: "Baby",
                    value: "R$ 100,00"),
            Product(name: "Baby Carriage",
                    value: "R$ 100,00"),
            Product(name: "Baby Carriage",
                    value: "R$ 100,00"),
            Product(name: "Baby Carriage",
                    value: "R$ 100,00"),
            Product(name: "Baby Carriage",
                    value: "R$ 100,00")
        ]
    }
}
