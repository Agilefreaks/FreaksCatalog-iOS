import XCTest

class FreaksUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false

        app.launch()
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testFreakListItemHasImage() {
        let image = app.images["freakImage"].firstMatch

        XCTAssert(image.waitForExistence(timeout: 10))
    }

    func testFreakListItemHasFullName() {
        let firstName = app.staticTexts["freakFirstName"]

        XCTAssert(firstName.waitForExistence(timeout: 10))
    }
}
