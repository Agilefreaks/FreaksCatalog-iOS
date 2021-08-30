import Foundation

final class FreakDetailsViewModel {
    private var freak: Freak

    init(freak: Freak) {
        self.freak = freak
    }

    var fullName: String {
        freak.firstName + " " + freak.lastName
    }

    var imageName: String {
        freak.imageName
    }

    var description: String {
        freak.description
    }

    var skills: [Skill] {
        freak.skills
    }

    var projects: [Project] {
        freak.projects
    }

    var technologies: [Technology] {
        freak.technologies
    }

    var level: String {
        freak.level
    }
}
