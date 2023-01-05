//
//  EncountersView.swift
//  Beholder
//
//  Created by Don Kittle on 2022-12-13.
//

import SwiftUI

struct EncountersView: View {
    @ObservedObject var data = ReadEncounterData()

    var body: some View {
        VStack {
            Text("Encounters").font(.brandTitle2)
            List {
                ForEach(campaignNames, id: \.self) { campaign in
                    Section(header: Text(campaign).font(.brandTitle1)) {
                        ForEach(data.encounters[campaign]!) { encounter in
                            EncounterRow(encounter: encounter)
                        }
                    }
                }
            }
        }
    }
    var campaignNames: [String] {
        data.encounters.keys
            .filter { key in
                !data.encounters[key]!.isEmpty
            }
            .map { key in
            String(key)
            }.sorted()
    }
}


class ReadEncounterData: ObservableObject {
    @Published var encounters = [String: [Encounter]]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url =  URL(string: "http://localhost:8000/api/encounters") else {
                print("Encounter list retrieval failed")
                return
            }
//        guard let url = Bundle.main.url(forResource: "encounters-short", withExtension: "json") else {
//            print("Json file not found")
//            return
//        }
        guard let data = try? Data(contentsOf: url) else {
            print("Cannot load encounters from URL")
            return
        }
        let encounters = try? JSONDecoder().decode([Encounter].self, from: data)
        
        var result: [String: [Encounter]] = [:]
        result["No Campaign"] = [Encounter]()
        if (encounters != nil) {
            let campaigns = collectCampaignNames(encounters: encounters!)
            campaigns.forEach { campaign in
                result[campaign] = collectCampaignEncounters(campaign: campaign, encounters: encounters!)
            }
        }
        
        self.encounters = result
    }
    
    func collectCampaignNames(encounters: [Encounter]) -> [String] {
        var result = [String]()
        result.append("No Campaign")
        encounters.forEach { encounter in
            if (encounter.campaign != nil) {
                result.append(encounter.campaign!.name)
            }
        }
        return result.unique()
    }
    
    func collectCampaignEncounters(campaign: String, encounters: [Encounter]) -> [Encounter] {
        return encounters.filter {
            encounter in encounter.campaign?.name == campaign
        }
    }
}
