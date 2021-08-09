import Foundation

final class FreaksViewModel: ObservableObject {
    @Published var freaks: [Freak] = []
    @Published var skillSelections: [Skill] = []

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
