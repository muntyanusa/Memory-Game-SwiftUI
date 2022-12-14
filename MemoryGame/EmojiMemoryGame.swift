//
//  EmojiMemoryGame.swift
//  MemoryGame
//"πΆ", "πΉ", "π±οΈ", "π€Ί",
//  Created by Π‘ΡΠ°Π½ΠΈΡΠ»Π°Π² ΠΡΠ½ΡΡΠ½Ρ on 05.12.2022.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    @Published private var model = createMemoryGame()
    
    static let emojis = ["πΆ", "πΉ", "π±οΈ", "π€Ί", "π±", "π", "βΎοΈ","π₯", "π", "π±", "π", "π£", "πΆ", "πΉ", "π±οΈ", "π€Ί", "π±", "π", "βΎοΈ","π₯", "π", "π±", "π", "π£"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 15) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
    
    
    var cards: Array<Card>{
        model.cards
    }
    
    
    
    // MARK: -  Intent(s)
    
    func choose(card: Card){
        model.choose(card)
    }
    
}
