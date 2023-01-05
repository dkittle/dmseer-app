import SwiftUI

struct CharacterRow: View {
    let character: PlayerCharacter
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: character.avatarUrl)!,
                placeholder: { Image(systemName: "person.fill") },
                image: { Image(uiImage: $0).resizable() }
                )
            .frame(minHeight: 10, maxHeight: 80)
            .aspectRatio(1, contentMode: .fit)
            VStack(alignment: .leading) {
                Text(character.name).font(.brandTitle2)
                Text(character.species).font(.brand)
                Text("Lvl: " + String(character.level) + " ~ " + character.classDescription).font(.brand)
            }
        }
    }
}


