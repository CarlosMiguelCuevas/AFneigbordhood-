//
//  FaqManager.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

@MainActor
@Observable
final class FaqManager {
    private let faqService: FaqServiceProtocol

    init(faqService: FaqServiceProtocol) {
        self.faqService = faqService
    }
    
    func fetchQuestions() async throws -> [Question] {
        try await faqService.getFaq()
    }
}

