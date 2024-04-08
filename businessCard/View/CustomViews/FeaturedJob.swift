//
//  FeaturedJob.swift
//  businessCard
//
//  Created by Андрей Буянов on 30.03.2024.
//

import SwiftUI

struct FeaturedJob: View {
    @State private var isPresented = false
    
    var vacancies: [Vacancy]
    
    var body: some View {
        VStack {
            HStack {
                Text("Featured Jobs")
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
                        }){
                            FeaturedJobCard(vacancy: vacancy)
                        }
                        .fullScreenCover(isPresented: $isPresented, content: {
                            VacancyCard.init(vacancy: vacancy)
                        })
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct FeaturedJob_Previews: PreviewProvider {
    static var previews: some View {
        let previewVacancy = Vacancy(
            logo: "Drible",
            vacancyName: "UX Designer",
            company: "Drible",
            tags: ["Design", "Full-Time", "Junior"],
            salary: "$80,000/y",
            region: "New-York, NY"
        )
        
        FeaturedJob(vacancies: [previewVacancy, previewVacancy, previewVacancy])
    }
}
