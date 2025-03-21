import CoreData

func addSampleProducts(context: NSManagedObjectContext) {
    let products = [
        ("1", "Laptop", "High-performance laptop", 1300.0, "TechCorp"),
        ("2", "Smartphone", "Latest model smartphone", 900.0, "Mobile Inc"),
        ("3", "Tablet", "10-inch screen tablet", 500.0, "TabWorld")
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
