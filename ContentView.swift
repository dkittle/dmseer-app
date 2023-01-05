import SwiftUI
import Foundation
import UIKit

struct ContentView: View {
    @State private var currentTab = 1
    private var ddbUserId = 107326383
    
    init() {
       fontSetup()
    }
    
    var body: some View {
        
        TabView(selection: $currentTab) {
            CharactersView()
            .tabItem {
                Image(systemName: "figure.walk.circle.fill")
                Text("Characters")
            }.tag(1)
            Text("Relationships")
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Relationships")
            }.tag(2)
            CampaignsView()
            .tabItem {
                VStack {
                    Image(systemName: "map.fill")
                    Text("Campaigns")
                }
            }.tag(3)
            EncountersView()
            .tabItem {
                VStack {
                    Image(systemName: "figure.wave")
                    Text("Encounters")
                }
            }.tag(4)
            Text("Combat")
            .tabItem {
                Label("Combat", systemImage: "figure.fencing")
            }.tag(5)
        }
    }
}


