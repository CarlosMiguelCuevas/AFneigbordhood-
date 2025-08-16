//
//  Home.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct Home: View {

    @Environment(HomeManager.self) private var homeManager
    @State private var homeViewModel = HomeViewModel()

    var body: some View {
        ZStack {
            Color.red.opacity(0.1)
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    // Upcoming Events Section
                    AfSectionHeader(title: "Upcoming Events")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(homeViewModel.upcomingEvents ?? []) {
                                event in
                                AfFeaturedCard(
                                    image: Image(systemName: "photo"),
                                    title: event.title,
                                    description: event.description
                                )
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Important Messages Section
                    AfSectionHeader(title: "Important Messages")

                    VStack(spacing: 16) {
                        ForEach(homeViewModel.importantMessages ?? []) {
                            message in
                            AfListItem(
                                image: Image(systemName: "house"),
                                title: message.title,
                                description: message.description
                            )
                        }
                    }
                    .padding(.horizontal)

                    // Committee Members Section
                    AfSectionHeader(title: "Committee Members")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(homeViewModel.committeeMebers ?? []) {
                                member in
                                AfFeaturedCard(
                                    image: Image(
                                        systemName: "person.crop.circle"
                                    ),
                                    title: member.name,
                                    description: member.role.rawValue
                                )
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Contact Administration Section
                    AfSectionHeader(title: "Contact Administration")
                    Button(action: {
                        if let url = URL(string: "tel://5555555555") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        AfListItem(
                            image: Image(systemName: "phone"),
                            title: homeViewModel
                                .administationContactInformation?.adminName
                                ?? "",
                            description:
                                "Contact us thourgh Whatsapp \(homeViewModel.administationContactInformation?.phoneNumber ?? "")"
                        )
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
        }
        .task {
            await homeViewModel.loadUpcomingEvents(homeManager: homeManager)
            await homeViewModel.loadImportantMessages(homeManager: homeManager)
            await homeViewModel.loadCommitteeMebers(homeManager: homeManager)
            await homeViewModel.loadAdministationContactInformation(
                homeManager: homeManager
            )
        }
    }
}

#Preview {
    Home()
        .environment(
            HomeManager(
                homeEventsService: MockedHomeEventsService(),
                homeMessagesService: MockedHomeMessagesService(),
                homeCommitteeService: MockedHomeCommitteeMembersService(),
                homeAdminContactService: MockedHomeAdminContactService()
            )
        )
}
