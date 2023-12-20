//
//  PreOnboarding.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/18/23.
//

import SwiftUI

struct FinalOnboardingView: View {
    var body: some View {
        
        let route = RoutingController()

        
        VStack {
            ZStack {
                Color.bg
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    Text("Welcome, Karl!")
                        .font(.custom("AvenirNext-Regular", size: 28))
                        .foregroundColor(Color.highEmphasis)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    Image("preOnboardingImage")
                        .resizable()
                        .frame(width: 300, height: 300)
                        Spacer()
                    
                    Text("Let’s get to know you better and \npersonalize your experience!")
                        .font(.custom("AvenirNext-Regular", size: 17))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.highEmphasis)
                        Spacer()
                    
                    Button(action: {
                        route.routeToGenreSelectionView()
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
                .padding(.bottom, 90)
                }
            }
        }
    }
    
#Preview {
    FinalOnboardingView()
}
