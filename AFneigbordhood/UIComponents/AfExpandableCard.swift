//
//  ExpandableCard.swift
//  AFneigbordhood
//
//  Created by M00306 on 7/26/25.
//

import SwiftUI

struct AfExpandableCard: View {
    @State private var isExpanded = false
    
    var title: String
    var description: String
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                if isExpanded {
                    Text(description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.clear)
            
            Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                .foregroundColor(.primary)
                .padding(16)
        }
        .onTapGesture {
            
            withAnimation {
                isExpanded.toggle()
            }
        }
    }
}

#Preview {
    AfExpandableCard(title: "What is the color code of the inner Painting? ",description: "it is perl white, you can ask for #FFF0F0")
}
