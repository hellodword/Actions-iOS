//
//  UITestPracticeUITests.swift
//  UITestPracticeUITests
//
//  Created by ky0me22 on 2021/10/23.
//

import XCTest

class UITestPracticeUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {}

    func testExample() throws {
        XCTContext.runActivity(named: "Firstボタンを押したらSecondAreaが表示される") { activity in
            waitToHittable(for: app.buttons["First"]).tap()
            waitToAppear(for: app.otherElements["SecondArea"])
        }
        XCTContext.runActivity(named: "Secondボタンを押したらThirdボタンが表示される") { activity in
            waitToHittable(for: app.buttons["Second"]).tap()
            waitToAppear(for: app.buttons["Third"])
        }
        XCTContext.runActivity(named: "Thirdボタンを押したらFourthボタンが表示される") { activity in
            waitToHittable(for: app.buttons["Third"]).tap()
            waitToAppear(for: app.buttons["Fourth"])
        }
        XCTContext.runActivity(named: "Fourthボタンを押したらFifthボタンが表示される") { activity in
            waitToHittable(for: app.buttons["Fourth"]).tap()
            waitToAppear(for: app.buttons["Fifth"])
        }
        XCTContext.runActivity(named: "Fifthボタンを押したらLastAreaが表示される") { activity in
            waitToHittable(for: app.buttons["Fifth"]).tap()
            waitToAppear(for: app.otherElements["LastArea"])
        }
    }
}
