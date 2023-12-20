//
//  PushNotificationScreen.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/18/23.
//

import SwiftUI

struct PushNotificationView: View {
    
    
    var body: some View {
    
    let route = RoutingController()
    
        VStack {
            ZStack {
                Color.bg
                .ignoresSafeArea(.all)

                VStack {
                    Spacer()
                    Text("Turn on push notifications")
                        .font(.custom("AvenirNext-Regular", size: 28))
                        .foregroundColor(Color.highEmphasis)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    
                    Image("pushNotificationImage")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text("Stay in the loop with fellow enthusiasts in discussions.")
                        .font(.custom("AvenirNext-Regular", size: 17))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.highEmphasis)

                    Text("\nGet instant alerts on upcoming movies,\n fan-favorite recommendations, and \n exciting movie events.")
                        .font(.custom("AvenirNext-Regular", size: 17))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.highEmphasis)
                        Spacer()
                    
                    Button(action: {
                        route.routeToFinalOnboardingView()
                    })
                    {
                        Text("Turn on notifications")
                            .font(.custom("AvenirNext-Regular", size: 17))
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 48)
                            .foregroundColor(.bg)
                            .background(Color.btn)
                            .cornerRadius(8)
                            .padding(.bottom, 15)
                            
                    }
                    
                    Button(action: {
                        route.routeToFinalOnboardingView()
                    }) {
                        Text("Not now")
                            .font(.custom("AvenirNext-Regular", size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(.highEmphasis)
//                            .frame(width: 300, height: 48)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(.highEmphasis, lineWidth: 1)
                                    .frame(width: 300, height: 48)
                            )
                            .background(Color.clear)
                            .cornerRadius(8)

                    }
                }
               .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    PushNotificationView()
}
