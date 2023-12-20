//
//  GenreSelectionButton.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/19/23.
//

import SwiftUI

struct GenreSelectionButton: View {
    @State var title: String
    @Binding var selectedGenres: [String]
    @State var isSelected: Bool
    @Binding var genreCount: Int
    
    var body: some View {
        VStack {
            Button(action: {
                isSelected.toggle()
                if  isSelected == true {
                    selectedGenres.append(title)
                    genreCount += 1
                    print(genreCount)
                } else {
                    selectedGenres.removeAll { $0 == title }
                    genreCount -= 1
                    print(genreCount)
                }
                print(selectedGenres)
            }) {
                Capsule()
                    .foregroundColor(isSelected ? Color.white : Color.bg )
                    .frame(width: 100, height: 35)
                    .overlay(
                        Text(title)
                            .font(.custom("AvenirNext-Regular", size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(isSelected ? Color.bg : Color.highEmphasis)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(.highEmphasis, lineWidth: 1)
                                    .frame(width: 100, height: 35)
                            )
                    )
            }
            
        }
    }
}

//#Preview {
//    var title = "title"
//    var selectedGenres = ["1", "2"]
//    var isSelected = false
//    
//    GenreSelectionButton(title: title, selectedGenres: selectedGenres, isSelected: isSelected, genreCount: $genreCount)
//}
