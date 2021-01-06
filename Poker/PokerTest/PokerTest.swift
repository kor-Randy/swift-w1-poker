//
//  PokerTest.swift
//  PokerTest
//
//  Created by 지현우 on 2021/01/06.
//

import XCTest

class PokerTest: XCTestCase {

    //test 함수는 맨 앞이 test로 시작해야 함
    
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
    
    func testPrintHello_Success() throws {
        XCTAssertEqual(printHello(), "Hello, World!")
    }
    
    func testPrintHello_Fail() throws {
        XCTAssertNotEqual(printHello(), "Hello, World")
    }
    
    func testLadder_init_success() throws {
    }
    
    func test사다리게임_초기화_성공할때() throws{
        //프로젝트 내의 메소드
    }
    
}
