import Foundation

struct Project: Identifiable, Codable, Filterable {
    let id: Int
    let name: String
    let description: String
    let technologies: [Technology]
}
