import Foundation

final class ListItemViewModel {
    private var freak: Freak

    init(freak: Freak) {
        self.freak = freak
    }

    var imageName: String {
        freak.imageName ?? "test1"
    }

    var fullName: String {
        freak.firstName + " " + freak.lastName
    }

    var firstName: String {
        freak.firstName
    }
}
