//
//  Vacancies.swift
//  businessCard
//
//  Created by Андрей Буянов on 08.04.2024.
//

import SwiftUI

struct Vacancies: View {
    @State private var activeTab: VacanciesTab = .vacancies
    @State private var isPresented = false
    @State private var presentedVacancy = VacancyData.sampleVacancy
    
    var vacancies: [Vacancy]
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $activeTab) {
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach(vacancies, id: \.self) { vacancy in
                                VacancyCard(isPresented: $isPresented, presentedVacancy: $presentedVacancy, vacancy: vacancy)
                                    .padding(.horizontal, 5)
                                    .fullScreenCover(isPresented: $isPresented, content: {
                                        VacancyDetail.init(vacancy: presentedVacancy)
                                    })
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
        Vacancies(vacancies: [VacancyData.vacancies[0], VacancyData.vacancies[1], VacancyData.vacancies[2]])
    }
}
