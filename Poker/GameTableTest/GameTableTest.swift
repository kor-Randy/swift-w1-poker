//
//  GameTableTest.swift
//  GameTableTest
//
//  Created by 지현우 on 2021/01/07.
//

import XCTest

class GameTableTest: XCTestCase {

    var table5 = GameTable(numberOfCard: 5)
    var table7 = GameTable(numberOfCard: 7)
    override func setUpWithError() throws {
        table5.enterPlayerInGame(Player(name: "a", money: 1))
        table5.enterPlayerInGame(Player(name: "b", money: 1))
        table5.enterPlayerInGame(Player(name: "c", money: 1))
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testIsAvailable_Success() throws{
        table5.distributeCard()
        table5.distributeCard()
        XCTAssert(table5.isAvailable())
    }
    
    
    
//
//    //게임 결과 오픈
//    func resultOfGame(){
//        dealer.printCards()
//        self.players.forEach {
//            $0.printCards()
//        }
//    }
//
//    //새로운 플레이어 진입
//    func enterPlayerInGame(_ newPlayer: Player) -> Bool{
//        if players.count >= 4{
//            return false
//        } else{
//            players.append(newPlayer)
//            return true
//        }
//    }
//
//    //플레이어 나감
//    func leavePlayerInGame(name: String){
//        self.players.enumerated().forEach {
//            if $0.element.name == name{
//                players.remove(at: $0.offset)
//            }
//        }
//    }

}
