import Foundation

struct Freak: Identifiable, Codable {
    let imageName: String
    let firstName: String
    let lastName: String
    let description: String
    let skills: [String]
    let projects: [String]
    let role: String
    let level: String
    let norm: String
    let id: Int
}
