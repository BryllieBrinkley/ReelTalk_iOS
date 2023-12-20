//
//  GenreSelectionScreen.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/19/23.
//

import SwiftUI

struct GenreSelectionView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    let genres = ["Action", "Adventure", "Animation", "Biography", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "History", "Horror", "Mystery", "Reality", "Romance", "Sci-Fi", "Sport", "Thriller", "War", "Western"]
    @State var selectedGenres: [String] = []
    @State var genreCount: Int = 0
    var isSelected = false
    
    
    
    //    @Binding var isSelected: Bool
    //    @State var color: Color
    //    @State var text: String
    
    //    @State private var selectedGenres: Set<String> = []
    
    
    var body: some View {
        
    let route  = RoutingController()
        
        ZStack {
            Color.bg
                .ignoresSafeArea()
            VStack {
                GenreSelectionHeader(genreCount: $genreCount)
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                        
                    ]) {
                        ForEach(genres, id: \.self) { title in
                            GenreSelectionButton(title: title, selectedGenres: $selectedGenres, isSelected: isSelected, genreCount: $genreCount)
                                .frame(width: 100, height: 40)
//                                .padding(.horizontal, 10)
                        }
                    }
                    
                    //                    LazyHGrid(rows: [
                    //                        GridItem(.flexible()),
                    //                    ]) {
                    //                        ForEach(genres[8..<11], id: \.self) { title in
                    //                            GenreSelectionButton(title: title, selectedGenres: selectedGenres, isSelected: isSelected)
                    //                                .frame(width: 100, height: 35)
                    //                        }
                    //                    }
                    //                    .padding(.top, -240)
                    //
                    //                    LazyHGrid(rows: [
                    //                        GridItem(.flexible(), spacing: 16),
                    //                        GridItem(.flexible(), spacing: 16),
                    //                    ], spacing: 16) {
                    //                        ForEach(genres[13..<28], id: \.self) { title in
                    //                            GenreSelectionButton(title: title, selectedGenres: selectedGenres, isSelected: isSelected)
                    //                                .frame(width: 100, height: 35)
                    //                        }
                    //                    }
                    
                }
                Button(action: {
                    route.routeToMovieSelectionView()
                })
                {
                    Text("Continue")
                        .font(.custom("AvenirNext-Regular", size: 17))
                        .fontWeight(.bold)
                        .frame(width: 300, height: 48)
                        .foregroundColor(.bg)
                        .background(Color.btn)
                        .cornerRadius(8)
                        
                }

            }
        }
    }
}
                
                        
                
                                
//                    LazyVGrid(columns: columns) {
//                            ForEach(genres, id: \.self) { title in
//                                Button(action: {
//                                    toggleGenreSelection(title)
//                                }) {
//                                    Capsule()
//                                        .foregroundColor(selectedGenres.contains(title) ? Color.white : Color.bg)
//                                        .frame(width: 130, height: 35)
//                                        .padding(EdgeInsets(top: 6, leading: 24, bottom: 6, trailing: 24))
//                                        .overlay(
//                                            Text(title)
//                                                .font(.custom("AvenirNext-Regular", size: 17))
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(selectedGenres.contains(title) ? .bg : .highEmphasis)
//                                                .overlay(
//                                                    RoundedRectangle(cornerRadius: 25)
//                                                        .stroke(.highEmphasis, lineWidth: 1)
//                                                        .frame(width: 130, height: 35)
//                                                )
//                                        )
//                                        .padding(EdgeInsets(top: 6, leading: 5, bottom: 6, trailing: 5))
//                                }
//                            }
//                    }
//    }
    
//    private func toggleGenreSelection(_ genre: String) {
//        if selectedGenres.contains(genre) {
//            selectedGenres.remove(genre)
//        } else {
//            selectedGenres.insert(genre)
//        }
//    }
//}
        

struct GenreSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        GenreSelectionView()
    }
}
