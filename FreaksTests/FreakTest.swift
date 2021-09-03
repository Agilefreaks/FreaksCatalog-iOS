import XCTest

@testable import Freaks

class FreakTest: XCTestCase {
    func testFullName() {
        let freak = Freak(imageName: "test1", firstName: "Vlad", lastName: "Militaru", description: "Lorem ipsum", skills: [Skill(id: "0", name: "iOS")], projects: [Project(id: "0", name: "Epix", description: "Streaming service", technologies: [Technology(id: "1", name: "Mihai", description: "descriere")], imageUrl: "imagine")], technologies: [Technology(id: "1", name: "Mihai", description: "descriere")], role: "iOS Developer", level: "Senior", norm: "Fulltime", id: "0")
        let sut = ListItemViewModel(freak: freak)
        let expectedResult = "Vlad Militaru"
        XCTAssert(sut.fullName == expectedResult)
    }
}
