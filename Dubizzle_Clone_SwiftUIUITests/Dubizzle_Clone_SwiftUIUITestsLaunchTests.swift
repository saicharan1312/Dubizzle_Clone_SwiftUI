//
//  Dubizzle_Clone_SwiftUIUITestsLaunchTests.swift
//  Dubizzle_Clone_SwiftUIUITests
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import XCTest

class Dubizzle_Clone_SwiftUIUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
