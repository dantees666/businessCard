//
//  Tab.swift
//  businessCard
//
//  Created by Андрей Буянов on 27.03.2024.
//

import SwiftUI

// App tabs
enum Tab: String, CaseIterable {
    case home = "Home"
    case messages = "Messages"
    case bookmarks = "Bookmarks"
    case menu = "Vacanies"
    
    var systemImage: String {
        switch self {
        case .home:
            "house.fill"
        case .messages:
            "envelope.fill"
        case .bookmarks:
            "bookmark.fill"
        case .menu:
            "square.grid.2x2.fill"
        }
    }
    
    var index: Int {
        Tab.allCases.firstIndex(of: self) ?? 0
    }
}
