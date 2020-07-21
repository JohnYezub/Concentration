//
//  Card.swift
//  Concentration
//
//  Created by   admin on 20.07.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation
struct Card {
    var identifier: Int
    var isFacedUp: Bool = false
    var isMatched: Bool = false
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
