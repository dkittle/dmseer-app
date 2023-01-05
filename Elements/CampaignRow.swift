//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-14.
//

import SwiftUI

struct CampaignRow: View {
    let campaign: Campaign
    
    var body: some View {
        HStack {
            if (campaign.splashUrl.isEmpty) {
                Text("🗺️").font(.system(size: 64))
            }
            else {
                AsyncImage(
                    url: URL(string: campaign.splashUrl)!,
                    placeholder: { Text("🗺️").font(.system(size: 36)) },
                    image: { Image(uiImage: $0).resizable() }
                    )
                .frame(minHeight: 10, maxHeight: 50)
                .aspectRatio(1, contentMode: .fit)
            }
            VStack(alignment: .leading) {
                Text(campaign.name).font(.brandTitle2)
                Text("Started \(campaign.dateCreated)").font(.brand)
                Text("\(campaign.playerCount) \(playersLabel)").font(.brand)
            }
        }
    }
    
    var playersLabel: String {
        if (campaign.playerCount == 1) {
            return "player"
        }
        return "players"
    }
}
