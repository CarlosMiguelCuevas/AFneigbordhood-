//
//  Home.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI


struct Faq: View {
    @Environment(FaqManager.self) private var faqManager
    @State private var faqViewModel = FaqViewModel()
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.1)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(faqViewModel.questions ?? []) { item in
                        AfExpandableCard(title: item.question, description: item.answer)
                    }
                }
                .padding()
            }
        }
        .task { await faqViewModel.loadFaqs(faqManager: faqManager)}
    }
}

#Preview {
    Faq()
        .environment(FaqManager(faqService: MockFaqService()))
}
