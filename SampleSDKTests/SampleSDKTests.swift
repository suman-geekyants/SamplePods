//
//  SampleSDKTests.swift
//  SampleSDKTests
//
//  Created by Suman Chatterjee on 24/04/25.
//

import XCTest
@testable import SampleSDK

final class SampleSDKTests: XCTestCase {
    
    var sampleSDK: MyDummyClass!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        sampleSDK = MyDummyClass(sampleProperty: "This is my custom string")
    }
    
    func testSampleProperty() throws {
        XCTAssertEqual(sampleSDK.sampleProperty, "This is my custom string")
    }
    
    func testDoSomething() throws {
        let customProp = "This is my custom string"
        let input = "Hello, World!"
        let result = "Input was: \(input), and sampleProperty is: \(customProp)"
        XCTAssertEqual(sampleSDK.doSomething(with: input), result)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sampleSDK = nil
    }

}
