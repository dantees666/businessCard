//
//  FeaturedJobCard.swift
//  businessCard
//
//  Created by Андрей Буянов on 29.03.2024.
//

import SwiftUI

struct FeaturedJobCard: View {
    var vacancy: Vacancy

    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(vacancy.company.logo)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .background() {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.white)
                            .frame(width: 50, height: 50)
                    }
                    .padding(.leading, 30)
                
                VStack {
                    HStack {
                        Text(vacancy.vacancyName)
                            .font(Font.custom("Montserrat-Bold", size: 15))
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    
                    HStack {
                        Text(vacancy.company.name)
                            .font(Font.custom("Montserrat-Regular", size: 13))
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: .infinity)
                
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark.fill")
                        .foregroundStyle(Color("MLightGray"))
                }
                .padding(30)
            }
            
            
            HStack(spacing: 30) {
                ForEach(vacancy.tags, id: \.self) { tagName in
                    JobTag(tag: tagName)
                }
            }
            
            HStack {
                Text(vacancy.salary)
                    .font(Font.custom("Montserrat-Bold", size: 13))
                    .foregroundStyle(.white)
                    .padding(.vertical)
                    .padding(.leading, 20)
                Spacer()
                Text(vacancy.region)
                    .font(Font.custom("Montserrat-Bold", size: 13))
                    .foregroundStyle(.white)
                    .padding(.vertical)
                    .padding(.trailing, 20)
            }
        }
        .background() {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color("MBlue"))
            
        }
    }
}

struct JobTag: View {
    let tag: String
    
    var body: some View {
        Text(tag)
            .font(Font.custom("Montserrat-Regular", size: 13))
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
            .background() {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color("MBlueBackground"))
            }
    }
}

struct FeaturedJobCard_Previes: PreviewProvider {
    static var previews: some View {
        FeaturedJobCard(vacancy: VacancyData.sampleVacancy)
    }
}
