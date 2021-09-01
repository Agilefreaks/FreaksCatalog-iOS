import Foundation

struct Project: Identifiable, Codable, Filterable {
    let id: String
    let name: String
    let description: String
    let technologies: [Technology]
    let imageUrl: String?
}
