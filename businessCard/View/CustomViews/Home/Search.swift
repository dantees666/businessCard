//
//  Search.swift
//  businessCard
//
//  Created by Андрей Буянов on 28.03.2024.
//

import SwiftUI
import Observation

struct Search: View {
    @Bindable var viewModel = SearchViewModel()
    
    var body: some View {
        HStack(spacing: 10) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(Color("MGray"))
                    .padding(.leading)
                Text("Search a job or position")
                    .font(Font.custom("Montserrat-Regular", size: 14))
                    .foregroundStyle(Color("MGray"))
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background() {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color("MBackgroundGray"))
            }
            
            Button(action: {
                
            }) {
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(Color("MGray"))
                    .padding()
                    .background() {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color("MBackgroundGray"))
                    }
            }
            .frame(maxHeight: .infinity)
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.horizontal, 10)
    }
}

struct Search_Previes: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
