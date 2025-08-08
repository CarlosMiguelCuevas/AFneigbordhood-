//
//  Home.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct Home: View {
    let events = Event.sampleEvents
    let messages = Message.sampleMessages
    let comitteeMembers = CommitteeMember.sampleMembers
    
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
                            ForEach(events) { event in
                                AfFeaturedCard(image: Image(systemName: "photo"),
                                               title: event.title,
                                               description: event.description)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // Important Messages Section
                    AfSectionHeader(title: "Important Messages")
                    
                    VStack(spacing: 16) {
                        ForEach(messages) { message in
                            AfListItem(
                                image: Image(systemName: "house"),
                                title: message.title, description: message.description)
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    
                    // Committee Members Section
                    AfSectionHeader(title: "Committee Members")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(comitteeMembers) { member in
                                AfFeaturedCard(image: Image(systemName: "person.crop.circle"), title: member.name,
                                               description: member.role.rawValue)
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
                            title: "Sinergia Administration",
                            description: "Contact us thourgh Whatsapp 555-555-5555"
                        )
                    }
                    .buttonStyle(PlainButtonStyle()) 
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
        }
    }
}


#Preview {
    Home()
}
