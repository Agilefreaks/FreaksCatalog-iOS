import Foundation

final class FreaksViewModel: ObservableObject {
    @Published var freaks: [Freak] = []
    private var allFreaks: [Freak] = []

    var selectedSkills: [Filterable] = []
    var selectedProjects: [Filterable] = []

    init() {
        getFreaks()
    }

    func loadFreaks() {
        Network.shared.getAllFreaks { [weak self] result, _ in
            guard let self = self else { return }
            self.freaks = result
            self.allFreaks = result
        }
    }

    func getFreaks() {
        loadFreaks()
    }

    func setSelectedSkills(skills: [Filterable]) {
        selectedSkills = skills
    }

    func setSelectedProjects(projects: [Filterable]) {
        selectedProjects = projects
    }

    func filterFreaks() {
        freaks = allFreaks
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
