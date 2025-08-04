//
//  Home.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct FAQItem: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

struct Faq: View {
    let faqItems: [FAQItem] = [
        FAQItem(question: "What is the color code of the inner Painting?", answer: "It is perl white, you can ask for #FFF0F0."),
        FAQItem(question: "How do I access the clubhouse?", answer: "You need to use your resident keycard at the main entrance."),
        // Add more FAQ items as needed
    ]
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.1)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(faqItems) { item in
                        AfExpandableCard(title: item.question, description: item.answer)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Faq()
}
