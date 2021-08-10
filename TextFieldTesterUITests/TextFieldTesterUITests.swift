//  Created by nrith on 8/10/21.

import XCTest

class TextFieldTesterUITests: XCTestCase {

    func testReplaceTextInMultipleTextFields() throws {
        let app = XCUIApplication()
        app.launch()

        let field1TextField = app.textFields["Field 1"]
        field1TextField.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Clear text"]/*[[".textFields[\"Field 1\"].buttons[\"Clear text\"]",".buttons[\"Clear text\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        field1TextField.typeText("Oh")

        let field2TextField = app.textFields["Field 2"]
        field2TextField.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Clear text"]/*[[".textFields[\"Field 2\"].buttons[\"Clear text\"]",".buttons[\"Clear text\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        field2TextField.typeText("Susanna")

        app/*@START_MENU_TOKEN@*/.staticTexts["Button"]/*[[".buttons[\"Button\"].staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        app.alerts["You did it!"].scrollViews.otherElements.buttons["Awesome!"].tap()
    }

}
