//
//  Company.swift
//  businessCard
//
//  Created by Андрей Буянов on 09.04.2024.
//

import SwiftUI

struct Company: Hashable {
    var name: String
    var logo: String
}

struct CompanyData {
    static let sampleCompany = Company(name: "X", logo: "X")
    
    static let companies = [
        Company(name: "Drible",
                logo: "Drible"),
        
        Company(name: "Facebook",
                logo: "Facebook"),
        
        Company(name: "Google",
                logo: "Google"),
        
        Company(name: "Instagram",
                logo: "Instagram"),
        
        Company(name: "Reddit",
                logo: "Reddit"),
        
        Company(name: "Snapchat",
                logo: "Snapchat"),
        
        Company(name: "Telegram",
                logo: "Telegram"),
        
        Company(name: "TikTok",
                logo: "TikTok"),
        
        Company(name: "Tinder",
                logo: "Tinder"),
        
        Company(name: "X",
                logo: "X"),
    ]
}
