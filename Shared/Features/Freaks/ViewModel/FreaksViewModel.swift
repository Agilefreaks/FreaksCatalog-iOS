import Foundation

final class FreaksViewModel: ObservableObject {
    @Published var freaks: [Freak] = []

    var selectedTechnologies: [Filterable] = []
    var selectedProjects: [Filterable] = []

    init() {
        getFreaks()
    }

    func loadFreaks() {
        Network.shared.getAllFreaks { [weak self] result, _ in
            guard let self = self else { return }
            print(result)
        }
    }

    func getFreaks() {
        // freaks = load("MockData.json")
        loadFreaks()
    }

    func setSelectedTechnologies(technologies: [Filterable]) {
        selectedTechnologies = technologies
    }

    func setSelectedProjects(projects: [Filterable]) {
        selectedProjects = projects
    }

    func filterFreaks() {
        getFreaks()

        if !selectedTechnologies.isEmpty {
            freaks = freaks.filter {
                $0.technologies.contains { technology in
                    selectedTechnologies.contains(where: { $0.id == technology.id })
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
