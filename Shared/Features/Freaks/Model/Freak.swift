import Foundation

struct Freak: Identifiable, Codable {
    let imageName: String?
    let firstName: String
    let lastName: String
    let description: String
    let skills: [Skill]
    let projects: [Project]
    let technologies: [Technology]
    let role: String
    let level: String
    let norm: String
    let id: String
}
