//
//  Vacancies.swift
//  businessCard
//
//  Created by Андрей Буянов on 08.04.2024.
//

import SwiftUI

struct Vacancies: View {
    @State private var activeTab: VacanciesTab = .vacancies
    var vacancies: [Vacancy]
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $activeTab) {
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                            ForEach(vacancies, id: \.self) { vacancy in
                                RecommendedJobCard(vacancy: vacancy)
                            }
                        }
                        .padding()
                    }
                }
                .padding(.top, 70)
                .tag(VacanciesTab.vacancies)
                
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                            ForEach(vacancies, id: \.self) { vacancy in
                                RecommendedJobCard(vacancy: vacancy)
                            }
                        }
                        .padding()
                    }
                }
                .padding(.top, 70)
                .tag(VacanciesTab.companies)
            }
            VStack {
                VacanciesTabBarView(activeTab: $activeTab)
                Spacer()
            }
        
        }
    }
}

struct VacanciesTabBarView: View {
    @Binding var activeTab: VacanciesTab
    var body: some View {
        HStack(spacing: 20) {
            ForEach(
                VacanciesTab.allCases,
                id: \.rawValue
            ) {
                VacanciesTabBarItem(activeTab: $activeTab, tab: $0)
            }
        }
    }
}

struct VacanciesTabBarItem: View {
    @Binding var activeTab: VacanciesTab
    var tab: VacanciesTab
    
    var body: some View {
        Button {
            activeTab = tab
        } label: {
            Text(tab.rawValue)
                .font(activeTab == tab ? Font.custom("Montserrat-Bold", size: 16) : Font.custom("Montserrat-Bold", size: 14))
                .foregroundStyle(activeTab == tab ? .white : Color("MGray"))
                .padding()
                .background {
                    if activeTab == tab {
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(Color("MBlue").gradient)
                    }
                }
        }
    }
}

struct Vacancies_Previews: PreviewProvider {
    static var previews: some View {
        let previewVacancy = Vacancy(
            logo: "Drible",
            vacancyName: "UX Designer",
            company: "Drible",
            tags: ["Design", "Full-Time", "Junior"],
            salary: "$80,000/y",
            region: "New-York, NY"
        )
        
        let previewVacancy1 = Vacancy(
            logo: "Drible",
            vacancyName: "UX Designer",
            company: "Drible1",
            tags: ["Design", "Full-Time", "Junior"],
            salary: "$80,000/y",
            region: "New-York, NY"
        )
        
        let previewVacancy2 = Vacancy(
            logo: "Drible",
            vacancyName: "UX Designer",
            company: "Drible2",
            tags: ["Design", "Full-Time", "Junior"],
            salary: "$80,000/y",
            region: "New-York, NY"
        )
        
        Vacancies(vacancies: [previewVacancy, previewVacancy1, previewVacancy2])
    }
}
