import XCTest

@testable import Freaks

class FreakTest: XCTestCase {
    func testFullName() {
        let freak = Freak(imageName: "", firstName: "Vlad", lastName: "Militaru", id: 0)
        let sut = ListItemViewModel(freak: freak)
        let expectedResult = "Vlad Militaru"
        XCTAssert(sut.fullName == expectedResult)
    }
}
