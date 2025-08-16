//
//  service.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

struct MockedHomeAdminContactService: HomeAdminContactServiceProtocol {
    func getAdminContactInformation() async throws -> AdministationContactInformation {
        return AdministationContactInformation(
            phoneNumber: "555-555-5555",
            adminName: "Sinergia Administration"
        )
    }
    
    
}
