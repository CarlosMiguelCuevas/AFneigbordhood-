//
//  HomeModels.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//
import Foundation

struct Events: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
}


struct Message: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

struct CommitteeMamber: Identifiable {
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
