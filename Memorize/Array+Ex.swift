//
//  Array+Ex.swift
//  Memorize
//
//  Created by Dzmitry Makarevich on 7/22/21.
//

import Foundation

extension Array {
    var oneAndOnly: Element? {
        count == 1 ? first : nil
    }
}
