//
//  Vacancies.swift
//  businessCard
//
//  Created by Андрей Буянов on 08.04.2024.
//

import SwiftUI
import Observation

struct Vacancies: View {
    @Bindable private var viewModel = VacanciesViewModel()
    
    var vacancies: [Vacancy]
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $viewModel.activeTab) {
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach(vacancies, id: \.self) { vacancy in
                                VacancyCard(isPresented: $viewModel.isPresented, presentedVacancy: $viewModel.presentedVacancy, vacancy: vacancy)
                                    .padding(.horizontal, 5)
                                    .fullScreenCover(isPresented: $viewModel.isPresented, content: {
                                        VacancyDetail.init(vacancy: viewModel.presentedVacancy)
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
                VacanciesTabBarView(activeTab: $viewModel.activeTab)
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
