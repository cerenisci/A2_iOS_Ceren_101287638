import CoreData

func addSampleProducts(context: NSManagedObjectContext) {
    let products = [
        ("001", "Laptop", "High-performance laptop", 1200.0, "TechCorp"),
        ("002", "Smartphone", "Latest model smartphone", 800.0, "Mobile Inc"),
        ("003", "Tablet", "10-inch screen tablet", 600.0, "TabWorld")
    ]
    
    for (id, name, desc, price, provider) in products {
        let product = Product(context: context)
        product.id = id
        product.name = name
        product.productDescription = desc
        product.price = price
        product.provider = provider
    }
    
    try? context.save()
}
