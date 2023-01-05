//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-13.
//

import SwiftUI

struct Encounter: Codable, Hashable, Identifiable {
    var id: String
    var userId: Int64
    var name: String?
    var map: String?
    var room: String?
    var source: String?
    var inProgress: Bool
    var roundNum: Int?
    var turnNum: Int?
    var notes: String?
    var campaign: EncounterCampaign?
    var dateCreated: Int64
    var dateModified: Int64
    var description: String?
    var flavorText: String?
    var rewards: String?
    var monsters: [EncounterCreature]
    var players: [EncounterCharacter]
}

struct EncounterCampaign: Codable, Hashable, Identifiable {
    var id: Int64
    var name: String
}

struct EncounterCreature: Codable, Hashable, Identifiable {
    var id: Int64
    var uniqueId: String?
    var name: String?
    var order: Int?
    var quantity: Int?
    var notes: String?
    var index: Int?
    var currentHitPoints: Int?
    var temporaryHitPoints: Int?
    var maximumHitPoints: Int?
    var initiative: Int?
}

struct EncounterCharacter: Codable, Hashable, Identifiable {
    var id: String
    var level: Int?
    var type: String?
    var name: String?
    var race: String?
    var classByLine: String?
    var gender: String?
    var userName: String?
    var count: Int?
    var avatarUrl: String?
    var isReady: Bool?
    var currentHitPoints: Int?
    var temporaryHitPoints: Int?
    var maximumHitPoints: Int?
    var initiative: Int?
}


/**
 "id": "57116131",
 "count": 1,
 "level": 5,
 "type": "CHARACTER_TYPE_DDB",
 "hidden": false,
 "race": "Half-Elf",
 "gender": "female",
 "name": "Nya Amati",
 "userName": "Tyledres",
 "isReady": true,
 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/21050/758/150/197/1581111423-57116131.jpeg",
 "classByLine": "Bard / College of Creation",
 "initiative": 14,
 "currentHitPoints": 0,
 "temporaryHitPoints": 0,
 "maximumHitPoints": 0

 
 
 {
 
 {
     "groupId": "189734a9-0e2f-4cb6-a407-413191b75172",
     "id": 17138,
     "uniqueId": "74641710-986f-446f-86df-6114dff518d2",
     "name": "Carrion Crawler (A)",
     "order": 1,
     "quantity": 1,
     "notes": null,
     "index": 0,
     "currentHitPoints": 0,
     "temporaryHitPoints": 0,
     "maximumHitPoints": 51,
     "initiative": 12
 },

         "id": "6dc11418-5902-4471-bd09-3124800a4402",
         "copiedFromId": null,
         "userId": 107326383,
         "name": null,
         "map": null,
         "room": null,
         "source": null,
         "inProgress": true,
         "roundNum": 6,
         "turnNum": 1,
         "notes": null,
         "monsters": [
             {
                 "groupId": "189734a9-0e2f-4cb6-a407-413191b75172",
                 "id": 17138,
                 "uniqueId": "74641710-986f-446f-86df-6114dff518d2",
                 "name": "Carrion Crawler (A)",
                 "order": 1,
                 "quantity": 1,
                 "notes": null,
                 "index": 0,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 51,
                 "initiative": 12
             },
             {
                 "groupId": "36d7fcbd-7992-4960-8486-c5fb11b097bb",
                 "id": 17138,
                 "uniqueId": "107c0e12-1d34-4325-be2a-09286fa0d3d6",
                 "name": "Carrion Crawler (B)",
                 "order": 1,
                 "quantity": 1,
                 "notes": null,
                 "index": 1,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 51,
                 "initiative": 6
             },
             {
                 "groupId": "7c74b731-7349-47a8-a32c-b635754f41f8",
                 "id": 17138,
                 "uniqueId": "0ca662c1-60e0-4075-b670-7a81981cc8c4",
                 "name": "Carrion Crawler (C)",
                 "order": 1,
                 "quantity": 1,
                 "notes": null,
                 "index": 2,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 51,
                 "initiative": 8
             }
         ],
         "groups": [
             {
                 "id": "189734a9-0e2f-4cb6-a407-413191b75172",
                 "order": 1,
                 "name": null
             },
             {
                 "id": "36d7fcbd-7992-4960-8486-c5fb11b097bb",
                 "order": 2,
                 "name": null
             },
             {
                 "id": "7c74b731-7349-47a8-a32c-b635754f41f8",
                 "order": 3,
                 "name": null
             }
         ],
         "players": [
             {
                 "id": "57116131",
                 "count": 1,
                 "level": 5,
                 "type": "CHARACTER_TYPE_DDB",
                 "hidden": false,
                 "race": "Half-Elf",
                 "gender": "female",
                 "name": "Nya Amati",
                 "userName": "Tyledres",
                 "isReady": true,
                 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/21050/758/150/197/1581111423-57116131.jpeg",
                 "classByLine": "Bard / College of Creation",
                 "initiative": 14,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 0
             },
             {
                 "id": "60167160",
                 "count": 1,
                 "level": 5,
                 "type": "CHARACTER_TYPE_DDB",
                 "hidden": false,
                 "race": "Gnome",
                 "gender": "Female",
                 "name": "Pollux",
                 "userName": "Liberty222",
                 "isReady": true,
                 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/21050/536/150/150/1581111423-60167160.jpeg",
                 "classByLine": "Barbarian / Path of the Beast",
                 "initiative": 22,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 0
             },
             {
                 "id": "70740776",
                 "count": 1,
                 "level": 5,
                 "type": "CHARACTER_TYPE_DDB",
                 "hidden": false,
                 "race": "Half-Ooze",
                 "gender": "Fem/Nonbinary",
                 "name": "Dellamoira \"Moira\"  Vaughn-Kallick",
                 "userName": "Casiopian",
                 "isReady": true,
                 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/27163/676/150/150/1581111423-70740776.jpeg",
                 "classByLine": "Monk / Rogue / Way of Shadow",
                 "initiative": 24,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 0
             },
             {
                 "id": "71582204",
                 "count": 1,
                 "level": 5,
                 "type": "CHARACTER_TYPE_DDB",
                 "hidden": false,
                 "race": "Gnome",
                 "gender": "Male",
                 "name": "Nigel Wingdo",
                 "userName": "Gnoogman",
                 "isReady": true,
                 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/27250/114/172/150/1581111423-71582204.jpeg",
                 "classByLine": "Cleric / Arcana Domain",
                 "initiative": 9,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 0
             },
             {
                 "id": "78625581",
                 "count": 1,
                 "level": 5,
                 "type": "CHARACTER_TYPE_DDB",
                 "hidden": false,
                 "race": "Dragonborn",
                 "gender": "Male",
                 "name": "Yorrakas",
                 "userName": "dnieman6",
                 "isReady": true,
                 "avatarUrl": "https://www.dndbeyond.com/avatars/thumbnails/17/213/150/150/636377840974085948.jpeg",
                 "classByLine": "Paladin / Oath of Devotion",
                 "initiative": 15,
                 "currentHitPoints": 0,
                 "temporaryHitPoints": 0,
                 "maximumHitPoints": 0
             }
         ],
         "manualEntries": [],
         "difficulty": 2,
         "dateCreated": 1662427751219,
         "dateModified": 1663630459315,
         "versionNumber": 45,
         "status": 1,
         "campaign": {
             "id": 2361817,
             "name": "Monday Rime"
         }
 */
