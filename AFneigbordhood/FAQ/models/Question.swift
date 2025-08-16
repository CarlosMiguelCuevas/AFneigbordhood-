//
//  Questions.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/8/25.
//
import Foundation

struct Question: Identifiable {
    let id: UUID = UUID()
    let question: String
    let answer: String
}

