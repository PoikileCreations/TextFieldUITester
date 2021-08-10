//  Created by nrith on 8/10/21.

import XCTest

class TextFieldTesterUITests: XCTestCase {

    func testReplaceTextInMultipleTextFields() throws {
        let app = XCUIApplication()
        app.launch()

        let field1TextField = app.textFields["Field 1"]
        field1TextField.tap()
        app.buttons["Clear text"].tap()
        field1TextField.typeText("Oh")

        let field2TextField = app.textFields["Field 2"]
        field2TextField.tap()
        app.buttons["Clear text"].tap()
        field2TextField.typeText("Susanna")

        app.staticTexts["Button"].tap()

        app.alerts["You did it!"].scrollViews.otherElements.buttons["Awesome!"].tap()
    }

}
