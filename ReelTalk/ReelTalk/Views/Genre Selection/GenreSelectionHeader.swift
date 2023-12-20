//
//  GenreSelectionHeader.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/19/23.
//

import SwiftUI

struct GenreSelectionHeader: View {
    @Binding var genreCount: Int
    var body: some View {
        
        VStack {
            
            Image("firstProgressBar")
                .padding(.vertical, 30)
            
            Text("Select your top 3 genres for \nmovies and TV")
                .font(.custom("AvenirNext-Regular", size: 22))
                .foregroundColor(.highEmphasis)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
            
            Text("\(genreCount)/3 selected")
                .font(.custom("AvenirNext-Regular", size: 15))
                .foregroundColor(.highEmphasis)
                .multilineTextAlignment(.center)
                .fontWeight(.medium)
                .padding(.bottom, 30)
            
        }
        .background(Color.bg)
    }
}

//#Preview {
//    GenreSelectionHeader()
//}
