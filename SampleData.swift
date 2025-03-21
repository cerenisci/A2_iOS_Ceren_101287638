import CoreData

func addSampleProducts(context: NSManagedObjectContext) {
    let products = [
        ("1", "Laptop", "Most rated laptop", 1350.0, "TechComp"),
        ("2", "Smartphone", "Last model phone", 950.0, "MobilePhoneInc"),
        ("3", "Tablet", "10-inch tablet", 500.0, "Tab World")
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
