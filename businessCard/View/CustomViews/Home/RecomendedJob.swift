//
//  RecomendedJob.swift
//  businessCard
//
//  Created by Андрей Буянов on 30.03.2024.
//

import SwiftUI

struct RecommendedJob: View {
    @State private var isPresented = false
    
    var vacancies: [Vacancy]
    var body: some View {
        VStack {
            HStack {
                Text("Recommended Jobs")
                    .font(Font.custom("Montserrat-Bold", size: 16))
                
                Spacer()
                
                Button(action: {

                }) {
                    Text("See all")
                        .font(Font.custom("Montserrat-Light", size: 15))
                        .foregroundStyle(Color("MGray"))
                }
            }
            .padding(.horizontal, 20)
            
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    Spacer()
                    
                    ForEach(vacancies, id: \.self) { vacancy in
                        Button(action: {
                            isPresented.toggle()
                        }) {
                            RecommendedJobCard(vacancy: vacancy)
                                .fullScreenCover(isPresented: $isPresented, content: { VacancyDetail.init(vacancy: vacancy)})
                        }
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct RecomendedJob_Previes: PreviewProvider {
    static var previews: some View {
        RecommendedJob(vacancies: [VacancyData.sampleVacancy, VacancyData.sampleVacancy, VacancyData.sampleVacancy])
    }
}
