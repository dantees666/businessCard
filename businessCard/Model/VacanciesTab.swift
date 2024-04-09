//
//  VacanciesTab.swift
//  businessCard
//
//  Created by Андрей Буянов on 08.04.2024.
//

import SwiftUI

enum VacanciesTab: String, CaseIterable {
    case vacancies = "Vacancies"
    case companies = "Companies"
       
    var index: Int {
        VacanciesTab.allCases.firstIndex(of: self) ?? 0
    }
}
