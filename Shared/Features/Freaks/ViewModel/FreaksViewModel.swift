import Foundation

final class FreaksViewModel: ObservableObject {
    @Published var freaks: [Freak] = []

    var selectedSkills: [Filterable] = []
    var selectedProjects: [Filterable] = []

    init() {
        getFreaks()
    }

    func getFreaks() {
        freaks = load("MockData.json")
    }

    func setSelectedSkills(skills: [Filterable]) {
        selectedSkills = skills
    }

    func setSelectedProjects(projects: [Filterable]) {
        selectedProjects = projects
    }

    func filterFreaks() {
        if (selectedSkills.isEmpty || selectedProjects.isEmpty) ||
            (!selectedSkills.isEmpty || selectedProjects.isEmpty) ||
            (selectedSkills.isEmpty || !selectedProjects.isEmpty) {
            getFreaks()
        }

        if !selectedSkills.isEmpty {
            freaks = freaks.filter {
                $0.skills.contains { skill in
                    selectedSkills.contains(where: { $0.id == skill.id })
                }
            }
        }

        if !selectedProjects.isEmpty {
            freaks = freaks.filter {
                $0.projects.contains { project in
                    selectedProjects.contains(where: { $0.id == project.id })
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
