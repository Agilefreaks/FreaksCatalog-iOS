import Foundation

final class FreaksViewModel: ObservableObject {
    @Published var freaks: [Freak] = []
    var skills: [Skill] = [Skill(id: 0, name: "Kotlin"), Skill(id: 1, name: "iOS"), Skill(id: 2, name: "SwiftUI"), Skill(id: 3, name: "Elm")]

    @Published var skillSelections: [Skill] = []
    @Published var shouldFilterFreaks: Bool = false

    var counter: Int {
        skillSelections.count
    }

    var filterCounter: String {
        if !skillSelections.isEmpty {
            return "Skills (\(counter))"
        }
        return "Skills"
    }

    func isSkillSelected(skill: Skill) -> Bool {
        skillSelections.contains(skill)
    }

    func setupSelectedSkills(skill: Skill) {
        if isSkillSelected(skill: skill) {
            skillSelections.removeAll(where: { $0.id == skill.id })
        } else {
            skillSelections.append(skill)
        }
    }

    func getFreaks() {
        freaks = load("MockData.json")

        if !skillSelections.isEmpty {
            freaks = freaks.filter { freak in
                freak.skills.contains { skill in
                    skillSelections.contains(skill)
                }
            }
        }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
