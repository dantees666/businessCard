//
//  Welcome.swift
//  businessCard
//
//  Created by Андрей Буянов on 28.03.2024.
//

import SwiftUI

struct Welcome: View {
    private let name = "Andrew Buyanov"
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome back!")
                    .foregroundStyle(Color("MGray"))
                    .font(Font.custom("Montserrat-Bold", size: 14))
                Text("\(name) 👋")
                    .font(Font.custom("Montserrat-Bold", size: 18))
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image("Avatar")
                    .resizable()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
            }
            .padding()
        }
    }
}

struct Welcome_Previes: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
