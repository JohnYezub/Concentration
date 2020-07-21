//
//  Concentration.swift
//  Concentration
//
//  Created by   admin on 20.07.2020.
//  Copyright © 2020 Evgeny Ezub. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    var indexOfOneAndOnlyFacedUpCard: Int?
    
    func chooseCard(at index: Int) {
        //если isMatched = false
        if !cards[index].isMatched {
            
            //если уже есть превернутая карта и она не та с которой мы работаем
            if let matchIndex = indexOfOneAndOnlyFacedUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[index].isMatched = true
                    cards[matchIndex].isMatched = true
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyFacedUpCard = nil
                
            } else {
                //если две карты перевернуты или ни одной
                for flipDownIndex in cards.indices
                {
                    cards[flipDownIndex].isFacedUp = false
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyFacedUpCard = index
            }
        }
    }
    init(numberOfPairsOfCards: Int) {
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}
