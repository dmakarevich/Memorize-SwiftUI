//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dzmitry Makarevich on 7/22/21.
//

import SwiftUI

// MARK: - ViewModel
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    // MARK: - Statics
    private static let emojis = ["✈️", "🚌", "🚘", "🚢", "🚑", "🚔", "🚛", "🚜", "🚝", "🛵", "🚎", "🛴", "🚲", "🏍", "🏎"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }

    // MARK: - Variables
    @Published private var model: MemoryGame<String> = createMemoryGame()

    // MARK: - Computered Variables
    var cards: [Card] {
        model.cards
    }

    // MARK: - Intent(s)

    func choose(_ card: Card) {
        model.choose(card)
    }
}
