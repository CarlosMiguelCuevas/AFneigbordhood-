//
//  service.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

struct MockedHomeEventsService: HomeEventServiceProtocol {
    func getEvents() async throws -> [Event] {
        return [
            Event(title: "Noche Mexicana Event", description: "Vive con nosotros esta noche mexicana, trae comida", date: "2025-09-15", imagecode: "01"),
            Event(title: "Community Meeting", description: "Discuss neighborhood issues", date: "2025-10-15",  imagecode: "02"),
            Event(title: "Yard Sale", description: "Neighborhood yard sale event", date: "2025-11-05",  imagecode: "03")
        ]
    }
}
