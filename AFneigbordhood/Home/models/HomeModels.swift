//
//  HomeModels.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//
import Foundation

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
    let imagecode: String
}


struct Message: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imagecode: String
}

struct CommitteeMember: Identifiable {
    let id = UUID()
    let name: String
    let role: CommitteeRole
}

enum CommitteeRole: String {
    case president = "President"
    case vicePresident = "Vice President"
    case secretary = "Secretary"
    case treasurer = "Treasurer"
}


struct AdministationContactInformation {
    let phoneNumber: String
    let adminName: String
}
