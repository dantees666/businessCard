//
//  Home.swift
//  businessCard
//
//  Created by Андрей Буянов on 27.03.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(spacing: 30) {
            Welcome()
            Search()
            
            FeaturedJob(vacancies: [VacancyData.sampleVacancy, VacancyData.sampleVacancy, VacancyData.sampleVacancy])
            RecommendedJob(vacancies: [VacancyData.sampleVacancy, VacancyData.sampleVacancy, VacancyData.sampleVacancy])
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

