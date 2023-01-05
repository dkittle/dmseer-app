//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-13.
//

import SwiftUI

struct EncounterRow: View {
    let encounter: Encounter

    var body: some View {
        HStack {
            if (encounter.inProgress == false) {
                Text("🛡️").font(.system(size: 36))
            } else {
                Text("⚔️").font(.system(size: 36))
            }
            VStack(alignment: .leading) {
                if (encounter.name == nil) {
                    Text("Unnamed encounter").font(.brandTitle2)
                } else {
                    Text(encounter.name!).font(.brandTitle2)
                }
                Text("\(String(encounter.players.count)) characters, \(String(encounter.monsters.count))  creatures").font(.brand)
            }
        }
    }
}


