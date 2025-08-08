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
            Message(title: "Pool Maintenance Reminder", description: "The pool will be closed for maintenance on October 1st."),
            Message(title: "Trash pickup", description: "Remember to take out your tras can"),
            Message(title: "Reparacion de baches", description: "Ya se repararon los baches en gioconda y calle 5")
        ]
    }
    
    
}
