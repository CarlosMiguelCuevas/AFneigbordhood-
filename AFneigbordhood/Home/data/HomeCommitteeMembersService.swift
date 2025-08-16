//
//  service.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

struct HomeCommitteeMembersService: HomeCommitteeServiceProtocol {
    func getMembers() async throws -> [CommitteeMember] {
        return [
            CommitteeMember(name: "Joe", role: .president),
            CommitteeMember(name: "Lupita Verduzco", role: .secretary),
            CommitteeMember(name: "Eduardo", role: .treasurer)
        ]
    }
    
    
}


struct MockedHomeCommitteeMembersService: HomeCommitteeServiceProtocol {
    func getMembers() async throws -> [CommitteeMember] {
        return [
            CommitteeMember(name: "Joe", role: .president),
            CommitteeMember(name: "Lupita Verduzco", role: .secretary),
            CommitteeMember(name: "Eduardo", role: .treasurer)
        ]
    }
}
