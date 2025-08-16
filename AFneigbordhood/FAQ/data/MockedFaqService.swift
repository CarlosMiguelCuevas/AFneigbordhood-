//
//  service.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

struct MockFaqService: FaqServiceProtocol {
    func getFaq() async throws -> [Question] {
        return [
            Question(question: "What is the color code of the inner Painting?", answer: "It is perl white, you can ask for #FFF0F0."),
            Question(question: "How do I access the clubhouse?", answer: "You need to use your resident keycard at the main entrance."),
            Question(question: "What is the bank account to do the mantenance payment", answer: "City Banck, account number: 1234567890, routing number: 987654321."),
            Question(question: "How many homes are inside the neighborhood", answer: "151")
        ]
    }
    
    
}
