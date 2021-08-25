import Foundation

final class ProjectViewModel {
    var projects: [Project] = []

    init() {
        getProjects()
    }

    func getProjects() {
        projects = load("MockProjects.json")
    }
}
