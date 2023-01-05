//
//  CampaignsView.swift
//  Beholder
//
//  Created by Don Kittle on 2022-12-14.
//

import SwiftUI

struct CampaignsView: View {
    @ObservedObject var data = ReadCampaignData()

    var body: some View {
        VStack {
            Text("Campaigns").font(.brandTitle2)
            List {
                ForEach(data.campaigns) { campaign in
                    CampaignRow(campaign: campaign)
                }
            }
        }
    }
}

class ReadCampaignData: ObservableObject {
    @Published var campaigns = [Campaign]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url =  URL(string: "http://localhost:8000/api/campaigns") else {
                print("Campaign list retrieval failed")
                return
            }
//        guard let url = Bundle.main.url(forResource: "encounters-short", withExtension: "json") else {
//            print("Json file not found")
//            return
//        }
        guard let data = try? Data(contentsOf: url) else {
            print("Cannot load campaigns from URL")
            return
        }
        let campaigns = try? JSONDecoder().decode([Campaign].self, from: data)
        self.campaigns = campaigns!
    }
}

