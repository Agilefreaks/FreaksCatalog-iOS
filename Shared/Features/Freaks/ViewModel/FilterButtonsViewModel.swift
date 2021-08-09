import Foundation

final class FilterButtonsViewModel: ObservableObject {
    @Published var skillsSelectedCounter: Int = 0
    @Published var projectsSelectedCounter: Int = 0

    func setSkillsCounter(counter: Int) {
        skillsSelectedCounter = counter
    }

    func setProjectsCounter(counter: Int) {
        projectsSelectedCounter = counter
    }

    func getSkillsTitle() -> String {
        skillsSelectedCounter == 0 ? "Skills" : "Skills (\(skillsSelectedCounter))"
    }

    func getProjectsTitle() -> String {
        projectsSelectedCounter == 0 ? "Projects" : "Projects (\(projectsSelectedCounter))"
    }
}
