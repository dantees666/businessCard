//
//  ContentViewViewModel.swift
//  businessCard
//
//  Created by Андрей Буянов on 16.04.2024.
//

import SwiftUI
import Observation

@Observable
final class ContentViewViewModel {
    var activeTab: Tab = .home
    var tabshapePosition: CGPoint = .zero
}
