//
//  File.swift
//  
//
//  Created by Don Kittle on 2022-12-15.
//

import SwiftUI

class CharactersLoader: ObservableObject {
    
    func loadData() -> [PlayerCharacter]? {
        print("Loading characters")
        guard let url =  URL(string: "http://localhost:8000/api/characters/107326383") else {
                print("Character list retrieval failed")
                return nil
            }
        guard let data = try? Data(contentsOf: url) else {
            print("Cannot load data from URL")
            return nil
        }
        let characters = try? JSONDecoder().decode([PlayerCharacter].self, from: data)
        return characters
    }
}
