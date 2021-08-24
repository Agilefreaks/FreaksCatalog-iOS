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
            self.freaks = result
        }
    }

    func getFreaks() {
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
