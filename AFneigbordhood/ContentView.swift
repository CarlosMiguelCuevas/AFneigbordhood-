//
//  ContentView.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ClubHouse()
                .tabItem {
                    Label("club house", systemImage:"music.note.house")
                }
            Faq()
                .tabItem {
                    Label("FAQ", systemImage: "questionmark.circle")
                }
            Market()
                .tabItem {
                    Label("Market", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
}
