//
//  MovieSelectionView.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/20/23.
//

import SwiftUI

struct MovieSelectionView: View {
        var body: some View {
        
            let route = RoutingController()
            
            ZStack {
                Color.bg
                    .ignoresSafeArea()
                VStack {
                    MovieSelectionHeader()
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                            
                        ]) {
//                            ForEach(genres, id: \.self) { title in
//                                GenreSelectionButton(title: title, selectedGenres: $selectedGenres, isSelected: isSelected, genreCount: $genreCount)
//                                    .frame(width: 100, height: 40)
                                //                                .padding(.horizontal, 10)
                            }
                        }
 
                    Button(action: {
                        route.routeToTVShowSelectionView()
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

#Preview {
    MovieSelectionView()
}
