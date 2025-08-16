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
    
    func loadUpcomingEvents(homeManager: HomeServiceProtocol) async {
        do {
            upcomingEvents = try await homeManager.getEvents()
        } catch {
            upcomingEvents = nil
        }
    }
    
    func loadImportantMessages(homeManager: HomeServiceProtocol) async {
        do {
            importantMessages = try await homeManager.getMessages()
        } catch {
            importantMessages = nil
        }
    }
    
    func loadCommitteeMebers(homeManager: HomeServiceProtocol) async {
        do {
            committeeMebers = try await homeManager.getMembers()
        } catch {
            committeeMebers = nil
        }
    }
    
    func loadAdministationContactInformation(homeManager: HomeServiceProtocol) async {
        do {
            administationContactInformation = try await homeManager.getAdminContactInformation()
        } catch {
            administationContactInformation = nil
        }
    }
    
}
