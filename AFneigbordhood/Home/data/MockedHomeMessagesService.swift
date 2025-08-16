//
//  service.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

struct MockedHomeMessagesService: HomeMessagesServiceProtocol {
    func getMessages() async throws -> [Message] {
        return [
            Message(title: "Pool Maintenance Reminder", description: "The pool will be closed for maintenance on October 1st.",  imagecode: "01"),
            Message(title: "Trash pickup", description: "Remember to take out your tras can",  imagecode: "02"),
            Message(title: "Reparacion de baches", description: "Ya se repararon los baches en gioconda y calle 5",  imagecode: "03")
        ]
    }
    
    
}
