//
//  VacancyCard.swift
//  businessCard
//
//  Created by Андрей Буянов on 31.03.2024.
//

import SwiftUI

struct VacancyDetail: View {
    @State private var activeTab: VacancyTab = .description
    @Environment(\.dismiss) var dismiss
    var vacancy: Vacancy
    
    var body: some View {
        ZStack {
            Color("MBlue")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.backward")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal, 30)
                    }
                    
                    Spacer()
                    
                    Image("Drible")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .background() {
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(.white)
                        }
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "bookmark.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .padding(.horizontal, 30)
                    }
                }
                
                VStack(spacing: 10) {
                    Text(vacancy.vacancyName)
                        .font(Font.custom("Montserrat-Bold", size: 20))
                        .foregroundStyle(.white)
                    Text(vacancy.company)
                        .font(Font.custom("Montserrat-Regular", size: 17))
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 30) {
                        ForEach(vacancy.tags, id: \.self) { tagName in
                            JobTag(tag: tagName)
                        }
                    }
                    
                    HStack(spacing: 10) {
                        Spacer()
                        
                        Text(vacancy.salary)
                            .font(Font.custom("Montserrat-Bold", size: 17))
                            .foregroundStyle(.white)
                            .padding(.vertical)
                        
                        Spacer()
                        
                        Text(vacancy.region)
                            .font(Font.custom("Montserrat-Bold", size: 17))
                            .foregroundStyle(.white)
                            .padding(.vertical)
                        
                        Spacer()
                    }
                }
                    .padding(.top, 30)
                
                ZStack(alignment: .top) {
                    TabView(selection: $activeTab) {
                        VStack {
                            Text(VacancyTab.description.rawValue)
                        }
                        .tag(VacancyTab.description)
                        
                        VStack {
                            Text(VacancyTab.requirement.rawValue)
                        }
                        .tag(VacancyTab.requirement)
                        
                        VStack {
                            Text(VacancyTab.about.rawValue)
                        }
                        .tag(VacancyTab.about)
                        
                        VStack {
                            Text(VacancyTab.reviews.rawValue)
                        }
                        .tag(VacancyTab.reviews)
                    }
                    
                    VStack {
                        VacancyTabBarView(activeTab: $activeTab)
                        
                        Spacer()
                        
                        Button( action: {
                            
                        }) {
                            Text("Apply Now")
                                .font(Font.custom("Montserrat-Bold", size: 17))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background() {
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color("MDarkBlue"))
                                }
                        }
                    }
                    .padding()
                    
                }
            }
        }
    }
}

struct VacancyTabBarView: View {
    @Binding var activeTab: VacancyTab
    var body: some View {
        HStack(spacing: 20) {
            ForEach(
                VacancyTab.allCases,
                id: \.rawValue
            ) {
                VacancyTabBarItem(activeTab: $activeTab, tab: $0)
            }
        }
    }
}

struct VacancyTabBarItem: View {
    @Binding var activeTab: VacancyTab
    
    var tab: VacancyTab
    
    var body: some View {
        Button {
            activeTab = tab
        } label: {
            Text(tab.rawValue)
                .font(activeTab == tab ? Font.custom("Montserrat-Regular", size: 16) : Font.custom("Montserrat-Regular", size: 14))
                .foregroundStyle(activeTab == tab ? .black : Color("MGray"))
                .padding(.vertical, 30)
        }
    }
}

struct VacancyCard_Previes: PreviewProvider {
    static var previews: some View {
        let previewVacancy = Vacancy(
            logo: "Drible",
            vacancyName: "UX Designer",
            company: "Drible",
            tags: ["Design", "Full-Time", "Junior"],
            salary: "$80,000/y",
            region: "New-York, NY"
        )
        VacancyDetail(vacancy: previewVacancy)
    }
}
