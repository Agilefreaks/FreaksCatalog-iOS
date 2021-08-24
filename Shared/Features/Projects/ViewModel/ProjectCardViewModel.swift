import Foundation

final class ProjectCardViewModel {
    private var project: Project

    init(project: Project) {
        self.project = project
    }

    var description: String {
        project.description
    }

    var name: String {
        project.name
    }
}
