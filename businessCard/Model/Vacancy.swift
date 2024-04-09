//
//  Vacancy.swift
//  businessCard
//
//  Created by Андрей Буянов on 30.03.2024.
//

import SwiftUI

struct Vacancy: Hashable {
    var vacancyName: String
    var company: Company
    var tags: [String]
    var salary: String
    var region: String
}

struct VacancyData {
    static let sampleVacancy = Vacancy(vacancyName: "UX Designer",
                                       company: CompanyData.companies[0],
                                       tags: ["Design", "Full-Time", "Junior"],
                                       salary: "$80,000/y",
                                       region: "New-York, NY")
    
    static let vacancies = [
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[0],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[1],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[2],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[3],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[4],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[5],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[6],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[7],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[8],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
        
        Vacancy(vacancyName: "UX Designer",
                company: CompanyData.companies[9],
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"),
    ]
}

