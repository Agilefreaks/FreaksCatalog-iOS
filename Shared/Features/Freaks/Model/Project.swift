import Foundation

struct Project: Identifiable, Codable, Hashable {
    let id: Int
    let name: String
    let description: String
}
