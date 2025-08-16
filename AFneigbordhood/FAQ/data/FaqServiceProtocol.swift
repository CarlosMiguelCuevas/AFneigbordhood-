//
//  FaqProtocol.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//

import Foundation

protocol FaqServiceProtocol {
    func getFaq() async throws -> [Question]
}
