//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dzmitry Makarevich on 7/20/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
