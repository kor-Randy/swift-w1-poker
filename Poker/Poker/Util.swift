//
//  Util.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

struct Util{
    
    static func convertFromNumToString(num: Int) -> String{
        if num == 0 {
            return "Joker"
        } else if num == 1{
            return "A"
        } else if num == 11{
            return "J"
        } else if num == 12{
            return "Q"
        } else if num == 13{
            return "K"
        } else{
            return String(num)
        }
    }
    
}
