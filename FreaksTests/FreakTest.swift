import XCTest

@testable import Freaks

class FreakTest: XCTestCase {
    func testFullName() {
        let freak = Freak(imageName: "", firstName: "Vlad", lastName: "Militaru")
        let sut = ListItemViewModel(freak: freak)
        let expectedResult = "Vlad Militaru"
        XCTAssert(sut.fullName == expectedResult)
    }
}
