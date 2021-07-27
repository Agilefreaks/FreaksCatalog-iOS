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

    var skills: [String] {
        freak.skills
    }

    var projects: [String] {
        freak.projects
    }

    var level: String {
        freak.level
    }
}
