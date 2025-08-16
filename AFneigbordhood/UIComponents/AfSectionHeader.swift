//
//  AfSectionHeader.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct AfSectionHeader: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .bold()
            .padding(.horizontal)
    }
}

#Preview {
    AfSectionHeader(title: "This is a New Section")
}
