import Foundation

final class FreakDetailsViewModel {
    private var freak: Freak

    init(freak: Freak) {
        self.freak = freak
    }

    var imageName: String {
        freak.imageName
    }

    var fullName: String {
        freak.firstName + " " + freak.lastName
    }
}
