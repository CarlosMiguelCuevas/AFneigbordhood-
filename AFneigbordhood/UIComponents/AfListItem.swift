//
//  AfListItem.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct AfListItem: View {
    let image: Image
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 60,height: 60)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 8) {
                
                Text(title)
                    .font(.headline)
                    .bold()
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
            
        }
    }
}

#Preview {
    AfListItem(
        image: Image(systemName: "photo"),
        title: "Pool Mantenance",
        description: "October 1st, 2025"
    )
}
