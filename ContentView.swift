import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Product.entity(), sortDescriptors: []) var products: FetchedResults<Product>
    
    @State private var selectedProduct: Product?

    var body: some View {
        NavigationView {
            VStack {
                if let product = selectedProduct {
                    Text(product.name ?? "Unknown")
                        .font(.smallTitle)

                    Text(product.productDescription ?? "No description")
                    Text("Price: $\(product.price)")
                    Text("Provider: \(product.provider ?? "Unknown")")
                } else {
                    Text("No Product Selected")
                }

                List(products) { product in
                    Button(action: { selectedProduct = product }) {
                        Text(product.name ?? "Unknown")
                    }
                }
            }
            .navigationTitle("Products")
        }
    }
}
