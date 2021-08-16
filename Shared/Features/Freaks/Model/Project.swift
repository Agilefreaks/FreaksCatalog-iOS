import Foundation

struct Project: Identifiable, Codable, Hashable, Filterable {
    let id: Int
    let name: String
    let description: String
}
