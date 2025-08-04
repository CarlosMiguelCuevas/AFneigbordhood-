//
//  UnderConstructionPlaceHolder.swift
//  AFneigbordhood
//
//  Created by M00306 on 8/3/25.
//

import SwiftUI

struct UnderConstructionPlaceHolder: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Image("underConstructionWarning")
                .resizable()
                .scaledToFit()
                .padding()
        }
    }
}

#Preview {
    UnderConstructionPlaceHolder()
}
