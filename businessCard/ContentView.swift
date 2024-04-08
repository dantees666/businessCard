//
//  ContentView.swift
//  businessCard
//
//  Created by Андрей Буянов on 27.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var activeTab: Tab = .home
    @Namespace private var animation
    @State private var tabshapePosition: CGPoint = .zero
    
    // Hiding Tab Bar due to SwiftUI bug
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $activeTab) {
                Home()
                    .tag(Tab.home)
                    //.toolbar(.hidden,for: .tabBar)
                Text("Messages")
                    .tag(Tab.messages)
                    //.toolbar(.hidden,for: .tabBar)
                Text("Bookmarks")
                    .tag(Tab.bookmarks)
                    //.toolbar(.hidden,for: .tabBar)
                Text("Menu")
                    .tag(Tab.menu)
                    //.toolbar(.hidden,for: .tabBar)
            }
            
            CustomTabBar()
        }
    }
    
    // Custom TabBar
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("MBlue"), _ inactiveTint: Color = Color("MBlue")) -> some View {
        HStack(alignment: .bottom ,spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) {
                TabBarItem(
                    tint: tint,
                    inactiveTint: inactiveTint,
                    tab: $0,
                    animation: animation,
                    activeTab: $activeTab,
                    position: $tabshapePosition
                )
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(content: {
            TabShape(midpoint: tabshapePosition.x)
                .fill(.white)
                .ignoresSafeArea()
                .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -5)
                .blur(radius: 2)
                .padding(.top, 25)
        })
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
    }
}

struct TabBarItem: View {
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    var animation: Namespace.ID
    @Binding var activeTab: Tab
    @Binding var position: CGPoint
    
    @State private var tabPosition: CGPoint = .zero
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: tab.systemImage)
                .font(.title2)
                .foregroundStyle(activeTab == tab ? .white : inactiveTint)
                .frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
                .background {
                    if activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                    }
                }
            
            Text(tab.rawValue)
                .font(.caption)
                .foregroundStyle(activeTab == tab ? tint : .gray)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .viewPosition(completion: { rect in
            tabPosition.x = rect.midX
            
            if activeTab == tab {
                position.x = rect.midX
            }
        })
        .onTapGesture {
            activeTab = tab
            
            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7)) {
                position.x = tabPosition.x
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}
