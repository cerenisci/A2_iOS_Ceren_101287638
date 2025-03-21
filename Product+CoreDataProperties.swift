import Foundation
import CoreData

extension Product {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var productDescription: String?
    @NSManaged public var price: Double
    @NSManaged public var provider: String?
}
// Product model for Core Data
