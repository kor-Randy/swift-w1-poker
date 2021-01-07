//
//  CardTest.swift
//  CardTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class CardTest: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
         
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testNumToString_AfterInitializeCard_Success() throws {
        let card = Card(shape: .heart, num: 12)
        XCTAssertEqual(card.description, "♥Q")
    }
    
    func testNumToString_AfterInitializeCard_Fail() throws {
        let card = Card(shape: .heart, num: 12)
        XCTAssertNotEqual(card.description, "♥K")
    }

}
