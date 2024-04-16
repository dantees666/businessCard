//
//  VacanciesViewModel.swift
//  businessCard
//
//  Created by Андрей Буянов on 16.04.2024.
//

import SwiftUI
import Observation

@Observable
final class VacanciesViewModel {
    var activeTab: VacanciesTab = .vacancies
    var isPresented = false
    var presentedVacancy = VacancyData.sampleVacancy
}
