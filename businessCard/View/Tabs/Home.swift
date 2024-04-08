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
            
            let previewVacancy = Vacancy(
                logo: "Drible",
                vacancyName: "UX Designer",
                company: "Drible",
                tags: ["Design", "Full-Time", "Junior"],
                salary: "$80,000/y",
                region: "New-York, NY"
            )
            
            FeaturedJob(vacancies: [previewVacancy, previewVacancy, previewVacancy])
            RecommendedJob(vacancies: [previewVacancy, previewVacancy, previewVacancy])
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

