//
//  MovieSelectionHeader.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/19/23.
//

import SwiftUI

struct MovieSelectionHeader: View {
    var body: some View {
        VStack {
            
            Image("secondProgressBar")
                .padding(.vertical, 30)
            
            Text("Select your top 5 \n movies")
                .font(.custom("AvenirNext-Regular", size: 22))
                .foregroundColor(.highEmphasis)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
            
            Text("0/5 selected")
                .font(.custom("AvenirNext-Regular", size: 15))
                .foregroundColor(.highEmphasis)
                .multilineTextAlignment(.center)
                .fontWeight(.medium)
                .padding(.bottom, 30)
            
            ZStack {
                Capsule()
                    .frame(width: 326, height: 48)
                    .foregroundColor(Color.white)
                ZStack {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search to add more", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .frame(width: 275, height: 48)
                            .font(.custom("AvenirNext-Regular", size: 17))
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.gray)
                            .clipped()
                    }
                }
            }
            
        }
        .background(Color.bg)
    }
}

#Preview {
    MovieSelectionHeader()
}
