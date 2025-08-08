//
//  HomeViewModel.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//
import Foundation

@MainActor
@Observable
class HomeViewModel {
    
    var upcomingEvents: [Event]? = nil
    var importantMessages: [Message]? = nil
    var committeeMebers: [CommitteeMember]? = nil
    var administationContactInformation: AdministationContactInformation? = nil
    
    func loadFaqs(faqManager: FaqManager) async {
        do {
            questions = try await faqManager.fetchQuestions()
            
        } catch {
            questions = nil
        }
        
    }
    
}
