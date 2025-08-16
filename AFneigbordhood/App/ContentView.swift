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
                .environment(HomeManager(
                    homeEventsService: MockedHomeEventsService(),
                    homeMessagesService: MockedHomeMessagesService(),
                    homeCommitteeService: MockedHomeCommitteeMembersService(),
                    homeAdminContactService: MockedHomeAdminContactService()
                    ))
            
            ClubHouse()
                .tabItem {
                    Label("club house", systemImage:"music.note.house")
                }
            
            Faq()
                .tabItem {
                    Label("FAQ", systemImage: "questionmark.circle")
                }
                .environment(FaqManager(faqService: MockFaqService()))
            
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
