//
//  ContentView.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/17/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        if isActive {
            WelcomeScreenView()
        } else {
            VStack {
                ZStack {
                    Color.bg
                        .ignoresSafeArea(.all)
                    VStack {
                        Image("splashScreenReel")
                            .resizable()
                            .frame(width: 176, height: 193)
                        Image("reel-talk")
                            .padding()
                    }
                    .padding(.bottom, 150)
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
