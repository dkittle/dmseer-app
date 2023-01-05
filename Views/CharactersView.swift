//
//  CharactersView.swift
//  Beholder
//
//  Created by Don Kittle on 2022-12-13.
//

import SwiftUI

//struct CharactersView: View {
//    var loader: CharactersLoader
//
//    @State private var result: Result<[PlayerCharacter], Error>?
//
//    var body: some View {
//            switch result {
//            case .success(let characters):
//                // Rendering our article content within a scroll view:
//                ScrollView {
//                    VStack {
//                        Text("Characters").font(.brandTitle2)
//                        List {
//                            ForEach(characters) { character in
//                                CharacterRow(character: character)
//                            }
//                        }
//                        .padding()
//                    }
//                }
//            case .failure(let error):
//                // Showing any error that was encountered using a
//                // dedicated ErrorView, which runs a given closure
//                // when the user tapped an embedded "Retry" button:
//                ErrorView(error: error)
//            case nil:
//                // We display a classic loading spinner while we're
//                // waiting for our content to load, and we start our
//                // loading operation once that view appears:
//                ProgressView().onAppear(perform: loadCharacters)
//            }
//        }
//
//        private func loadCharacters() {
//            loader.loadData() {
//                result = $0
//            }
//        }
//}

struct CharactersView: View {
    @ObservedObject var data = ReadData()

    var body: some View {
        VStack {
            Text("Characters").font(.brandTitle2)
            List {
                ForEach(data.characters) { character in
                    CharacterRow(character: character)
                }
            }
        }
    }
}


//struct CharactersView: View {
//    @ObservedObject var viewModel: ArticleViewModel
//
//    var body: some View {
//        AsyncContentView(source: viewModel) { article in
//            VStack {
//                Text("Characters").font(.brandTitle2)
//                List {
//                    ForEach(data.characters) { character in
//                        CharacterRow(character: character)
//                    }
//                }
//            }
//        }
//    }
//}

class ReadData: ObservableObject {
    @Published var characters = [PlayerCharacter]()
    
    init() {
        loadData()
    }
    
    
    func loadData() {
        guard let url =  URL(string: "http://localhost:8000/api/characters/107326383") else {
                print("Character list retrieval failed")
                return
            }
        guard let data = try? Data(contentsOf: url) else {
            print("Cannot load data from URL")
            return
        }
        let characters = try? JSONDecoder().decode([PlayerCharacter].self, from: data)
        self.characters = characters!
    }
}
