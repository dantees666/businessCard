//
//  ContentView.swift
//  businessCard
//
//  Created by Андрей Буянов on 27.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() 
    }
}
