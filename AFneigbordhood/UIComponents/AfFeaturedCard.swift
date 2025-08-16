//
//  FeaturedCard.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct AfFeaturedCard: View {
    let image: Image
    let title: String
    let description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            image
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipped()
                .cornerRadius(8)
            Text(title)
                .font(.headline)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(2)
                .minimumScaleFactor(0.8)
        }
        .padding()
        .frame(width: 180, height: 220)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

#Preview {
    AfFeaturedCard(
        image: Image(systemName: "photo"),
        title: "Noche Mexicana",
        description: "September 16, 2025"
    )
}
