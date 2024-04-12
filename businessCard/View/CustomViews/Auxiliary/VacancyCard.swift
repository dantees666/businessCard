//
//  VacancyCard.swift
//  businessCard
//
//  Created by Андрей Буянов on 12.04.2024.
//

import SwiftUI

struct VacancyCard: View {
    var vacancy: Vacancy
    
    var body: some View {
        VStack {
            HStack {
                Image(vacancy.company.logo)
                    .resizable()
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text(vacancy.vacancyName)
                        .font(Font.custom("Montserrat-Bold", size: 15))
                        .foregroundStyle(.black)
                    Text(vacancy.company.name)
                        .font(Font.custom("Montserrat-Bold", size: 13))
                        .foregroundStyle(Color("MGray"))
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text(vacancy.salary)
                        .font(Font.custom("Montserrat-Bold", size: 15))
                        .foregroundStyle(.black)
                    Text(vacancy.region)
                        .font(Font.custom("Montserrat-Bold", size: 13))
                        .foregroundStyle(Color("MGray"))
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Text(vacancy.status.rawValue)
                    .font(Font.custom("Montserrat-Bold", size: 15))
                    .foregroundStyle(vacancy.status.statusTextColor)
                    .frame(minWidth: 120,minHeight: 30)
                    .background() {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(vacancy.status.statusBackgroundColor)
                            
                    }
                
                Spacer()
                
                Text(vacancy.employment)
                    .font(Font.custom("Montserrat-Bold", size: 15))
                    .foregroundStyle(.black)
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
        }
        .background() {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color("MBackgroundGray"))
        }
    }
}
    
struct VacancyCard_Preview: PreviewProvider {
    static var previews: some View {
        VacancyCard(vacancy: VacancyData.sampleVacancy)
    }
}
