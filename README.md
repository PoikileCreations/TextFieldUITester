# TextFieldUITester
A simple iOS app that demonstrates an iOS 14.5 bug when UI testing multiple UITextFields

As seen on [Stack Overflow](https://stackoverflow.com/questions/68729537/xcode-ui-test-fails-to-edit-multiple-uitextfields) and the [Apple Developer Forums](https://developer.apple.com/forums/thread/687723).

In the iOS 14.5 simulator (and possibly other versions), any UI test that attempts to `typeText()` in two or more `UITextField` `XCUIElement`s will fail after the first field. The field itself can be cleared, if its clear button is enabled, but it can't be edited, because the UI test runner says that the field doesn't have focus.

This is known to work correctly in iOS 14.0, 14.3, and 15.0 beta simulators, but not 14.5.
