//
//  CardTest.swift
//  CardTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class CardTest: XCTestCase {
    override func setUpWithError() throws {
         
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
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
