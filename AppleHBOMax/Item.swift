//
//  Item.swift
//  AppleHBOMax
//
//  Created by designer on 2025-05-20.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
