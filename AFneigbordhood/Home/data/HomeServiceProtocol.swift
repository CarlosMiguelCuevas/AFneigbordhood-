//
//  FaqProtocol.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation


typealias HomeServiceProtocol = HomeEventServiceProtocol & HomeMessagesServiceProtocol & HomeCommitteeServiceProtocol & HomeAdminContactServiceProtocol

protocol HomeEventServiceProtocol {
    func getEvents() async throws -> [Event]
}

protocol HomeMessagesServiceProtocol {
    func getMessages() async throws -> [Message]
}

protocol HomeCommitteeServiceProtocol {
    func getMembers() async throws -> [CommitteeMember]
}

protocol HomeAdminContactServiceProtocol {
    func getAdminContactInformation() async throws -> AdministationContactInformation
}
