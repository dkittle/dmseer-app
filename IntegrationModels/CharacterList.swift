

import SwiftUI

struct PlayerCharacter: Codable, Hashable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case level = "level"
        case name = "name"
        case classDescription = "classDescription"
        case species = "raceName"
        case avatarUrl = "avatarUrl"
    }
    var id: Int64
    var level: Int
    var name: String
    var classDescription: String
    var species: String
    var avatarUrl: String
}

/**
 "id": 32133946,
 "level": 3,
 "name": "Verek Rivers",
 "status": 1,
 "statusSlug": "active",
 "isAssigned": true,
 "classDescription": "Sorcerer/Draconic Bloodline",
 "raceName": "Baalzebul Tiefling",
 "avatarUrl": "https://www.dndbeyond.com/avatars/14728/778/1581111423-32133946.jpeg?width=60&height=60&fit=bounds&quality=95&auto=webp",
 "backdropUrl": "https://www.dndbeyond.com/avatars/13574/103/637396156858191751.jpeg",
 "coverImageUrl": "//www.dndbeyond.com/attachments/0/2/sample-bg.jpg",
 "characterSecondaryInfo": "Level 3 | Baalzebul Tiefling | Sorcerer/Draconic Bloodline",
 "campaignId": null,
 "campaignName": null,
 "createdDate": 1594911760,
 "lastModifiedDate": 1621282190,
 "isReady": false
 */
