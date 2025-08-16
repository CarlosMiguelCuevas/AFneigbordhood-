//
//  FaqViewModel.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

@MainActor
@Observable
class FaqViewModel {
    
    var questions: [Question]? = nil
    
    func loadFaqs(faqManager: FaqManager) async {
        do {
            questions = try await faqManager.fetchQuestions()
            
        } catch {
            questions = nil
        }
        
    }
    
}
