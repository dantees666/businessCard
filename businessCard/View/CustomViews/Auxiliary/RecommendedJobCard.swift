//
//  RecommendedJobCard.swift
//  businessCard
//
//  Created by Андрей Буянов on 30.03.2024.
//

import SwiftUI

struct RecommendedJobCard: View {
    var vacancy: Vacancy
    var body: some View {
        VStack(spacing: 10) {
            Image(vacancy.company.logo)
                .resizable()
                .frame(width: 50, height: 50)
            Text(vacancy.vacancyName)
                .font(Font.custom("Montserrat-Bold", size: 15))
                .foregroundStyle(.black)
            Text(vacancy.company.name)
                .font(Font.custom("Montserrat-Bold", size: 13))
                .foregroundStyle(Color("MGray"))
            Text(vacancy.salary)
                .font(Font.custom("Montserrat-Bold", size: 15))
                .foregroundStyle(.black)
        }
        .frame(width: 180, height: 180)
        .background() {
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(Color("MBackgroundPink"))
                .frame(width: 180, height: 180)
        }
    }
}

struct RecommendedJobCart_previews: PreviewProvider {
    static var previews: some View {
        RecommendedJobCard(vacancy: VacancyData.sampleVacancy)
    }
}
