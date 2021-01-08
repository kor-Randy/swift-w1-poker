//
//  GameTableTest.swift
//  GameTableTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class GameTableTest: XCTestCase {
    
    override func setUpWithError() throws {
       
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
    }

    func test5IsAvailable_Success() throws{
        var table5 = GameTable(numberOfCard: 5)
        table5.enterPlayerInGame(Player(name: "a", money: 1))
        table5.enterPlayerInGame(Player(name: "b", money: 1))
        table5.enterPlayerInGame(Player(name: "c", money: 1))
        table5.distributeCard()
        table5.distributeCard()
        XCTAssert(table5.isAvailable())
    }
    
    func test7IsAvailable_Success() throws{
        var table7 = GameTable(numberOfCard: 7)
        table7.enterPlayerInGame(Player(name: "a", money: 1))
        table7.enterPlayerInGame(Player(name: "b", money: 1))
        table7.distributeCard()
        table7.distributeCard()
        XCTAssert(table7.isAvailable())
    }
    
}
