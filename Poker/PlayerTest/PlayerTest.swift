//
//  PlayerTest.swift
//  PlayerTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class PlayerTest: XCTestCase {
    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
    }
    
    func testPair1_Success() throws{
        let player = Player(name: "a")
        player.cards.removeAll()
        player.cards.append(Card(shape: .club, num: 11))
        player.cards.append(Card(shape: .club, num: 12))
        player.cards.append(Card(shape: .club, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 9, duplicate: 1))
    }
    
    func testPair2_Success() throws{
        let player = Player(name: "a")
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 11))
        player.cards.append(Card(shape: .diamond, num: 11))
        player.cards.append(Card(shape: .club, num: 11))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 11, duplicate: 2))
    }
    func testPair3_Success() throws{
        let player = Player(name: "a")
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 11))
        player.cards.append(Card(shape: .club, num: 1))
        player.cards.append(Card(shape: .diamond, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 9, duplicate: 1))
    }
    func testPair4_Success() throws{
        let player = Player(name: "a")
        player.cards.removeAll()
        player.cards.append(Card(shape: .heart, num: 13))
        player.cards.append(Card(shape: .club, num: 13))
        player.cards.append(Card(shape: .diamond, num: 1))
        player.cards.append(Card(shape: .spade, num: 9))
        player.cards.append(Card(shape: .club, num: 9))
        XCTAssertEqual(player.getPair(), Player.Pair(num: 13, duplicate: 1))
    }

}
