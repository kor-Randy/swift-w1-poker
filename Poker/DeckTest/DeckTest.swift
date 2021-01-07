//
//  DeckTest.swift
//  DeckTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class DeckTest: XCTestCase {
    var deck = Deck()
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
    
    func testInitCard() throws {
        _ = deck.initCardDeck()
    }

    func testBeforeCardCompareWithAfterCard_Success() throws{
        let before = deck.removeOne()
        _ = deck.resetDeck()
        _ = deck.shuffleDeck()
        let after = deck.removeOne()
        XCTAssertNotEqual(before?.description, after?.description)
    }
    
    func testRemoveCardOnTop_Success() throws{
        let beforeRemove = deck.count
        _ = deck.removeOne()
        let afterRemove = deck.count
        XCTAssertEqual(beforeRemove - 1, afterRemove)
    }
    
    func testRemoveAllCard_Success() throws{
        _ = deck.initCardDeck()
        for _ in 0...52{
            _ = deck.removeOne()
        }
        XCTAssertEqual(0, deck.count)
    }
    
    func testHasJokerInDeck_Success() throws{
//        _ = deck.initCardDeck().shuffleDeck() // -> 함수가 반환하는 Sturuct Type Instances는 항상 immutable
        _ = deck.initCardDeck()
        _ = deck.shuffleDeck()
        for _ in 0...52{
            if deck.removeOne()?.shape == .joker{
                break
            }
        }
        XCTAssertTrue(deck.count >= 0)
    }

}
