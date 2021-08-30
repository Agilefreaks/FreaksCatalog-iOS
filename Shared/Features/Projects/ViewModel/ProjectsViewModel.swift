import Foundation

final class ProjectsViewModel {
    var projects: [Project] = []

    init() {
        getProjects()
    }

    func getProjects() {
        projects = load("MockProjects.json")
    }
}
