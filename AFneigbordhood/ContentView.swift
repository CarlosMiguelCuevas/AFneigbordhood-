//
//  ContentView.swift
//  AFneigbordhood
//
//  Created by Carlos Cuevas on 7/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("CLUB HOUSE")
                .tabItem {
                    Label("club house", systemImage: "gear")
                }
            Text("FAQ")
                .tabItem {
                    Label("FAQ", systemImage: "gear")
                }
            Text("Community")
                .tabItem {
                    Label("Community", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
