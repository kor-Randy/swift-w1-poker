//
//  PlayerTest.swift
//  PlayerTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class PlayerTest: XCTestCase {

    var player = Player(name: "a")
    
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
    
    func testPair1_Success() throws{
        player.cards.removeAll()
        player.cards.append(Card(shape: .club, num: 11))
        player.cards.append(Card(shape: .club, num: 12))
        player.cards.append(Card(shape: .club, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 9, duplicate: 1))
    }
    
    func testPair2_Success() throws{
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 11))
        player.cards.append(Card(shape: .diamond, num: 11))
        player.cards.append(Card(shape: .club, num: 11))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 11, duplicate: 2))
    }
    func testPair3_Success() throws{
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 11))
        player.cards.append(Card(shape: .club, num: 1))
        player.cards.append(Card(shape: .diamond, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 9, duplicate: 1))
    }
    func testPair4_Success() throws{
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 13))
        player.cards.append(Card(shape: .club, num: 13))
        player.cards.append(Card(shape: .diamond, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 13, duplicate: 1))
    }

}
