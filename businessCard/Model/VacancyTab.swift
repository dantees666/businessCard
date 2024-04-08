//
//  VacancyTab.swift
//  businessCard
//
//  Created by Андрей Буянов on 31.03.2024.
//

import SwiftUI

// App tabs
enum VacancyTab: String, CaseIterable {
    case description = "Description"
    case requirement = "Requirement"
    case about = "About"
    case reviews = "Reviews"
       
    var index: Int {
        VacancyTab.allCases.firstIndex(of: self) ?? 0
    }
}
