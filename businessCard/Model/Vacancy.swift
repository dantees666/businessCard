//
//  Vacancy.swift
//  businessCard
//
//  Created by Андрей Буянов on 30.03.2024.
//

import SwiftUI

struct Vacancy: Hashable {
    var logo: String
    var vacancyName: String
    var company: String
    var tags: [String]
    var salary: String
    var region: String
    
    init(logo: String, vacancyName: String, company: String, tags: [String], salary: String, region: String) {
        self.logo = logo
        self.vacancyName = vacancyName
        self.company = company
        self.tags = tags
        self.salary = salary
        self.region = region
    }
}

