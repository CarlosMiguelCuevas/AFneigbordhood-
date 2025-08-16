//
//  FaqManager.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

@MainActor
@Observable
final class HomeManager: HomeServiceProtocol {
    
    private let homeEventsService: HomeEventServiceProtocol
    private let homeMessagesService: HomeMessagesServiceProtocol
    private let homeCommitteeService: HomeCommitteeServiceProtocol
    private let homeAdminContactService: HomeAdminContactServiceProtocol

    init(
        homeEventsService: HomeEventServiceProtocol,
        homeMessagesService: HomeMessagesServiceProtocol,
        homeCommitteeService: HomeCommitteeServiceProtocol,
        homeAdminContactService: HomeAdminContactServiceProtocol
    ) {
        self.homeEventsService = homeEventsService
        self.homeMessagesService = homeMessagesService
        self.homeCommitteeService = homeCommitteeService
        self.homeAdminContactService = homeAdminContactService
    }
    
    func getEvents() async throws -> [Event] {
        return try await homeEventsService.getEvents()
    }
    
    func getMessages() async throws -> [Message] {
        return try await homeMessagesService.getMessages()
    }
    
    func getMembers() async throws -> [CommitteeMember] {
        return try await homeCommitteeService.getMembers()
    }
    
    func getAdminContactInformation() async throws -> AdministationContactInformation {
        return try await homeAdminContactService.getAdminContactInformation()
    }
    
}

