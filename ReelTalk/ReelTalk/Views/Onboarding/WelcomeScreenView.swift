//
//  WelcomeScreen1View.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/17/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    @State private var selectedPage = 0
    
    var body: some View {
        TabView(selection: $selectedPage) {
            WelcomePageSlide(index: 0, imageName: "welcomeScreen1", text: "Welcome to Reel Talk, a community designed for true film and TV Show fans", dotImage: "firstDot")
                .tag(0)
            
            
            WelcomePageSlide(index: 1, imageName: "welcomeScreen2", text: "Discover and discuss your favorite films, movies, and shows", dotImage: "secondDot")
                .tag(1)
            
            WelcomePageSlide(index: 2, imageName: "welcomeScreen3", text: "Let's get started!", dotImage: "thirdDot")
                .tag(2)
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .background(Color("bgColor"))
        .tabViewStyle(.page)
    }
    
    struct WelcomePageSlide: View {
        let index: Int
        let imageName: String
        let text: String
        let dotImage: String
        let exsistingUserPrompt = "Already have an account?"
        
        
        var showContinueButton: Bool {
            return index == 2
        }
        
        
        var body: some View {
            
            VStack {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(.bottom, 270)
                    Text(text)
                        .font(.custom("AvenirNext-Regular", size: 20))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.highEmphasis)
                        .padding(.top, 250)
                    Image(dotImage)
                        .padding(.top, 350)
                    if showContinueButton {
                        Button(action: {
                            print("Continue tapped!")
                        }) {
                            
                            Text("Continue")
                                .font(.custom("AvenirNext-Regular", size: 17))
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: 300, height: 48)
                                .foregroundColor(.bg)
                                .background(Color.btn)
                                .cornerRadius(8)
                                .padding(.top, 500)
                        }
                    }
                    HStack {
                        if !showContinueButton {
                            Text(exsistingUserPrompt)
                                .font(.custom("AvenirNext-Regular", size: 17))
                                .fontWeight(.semibold)
                                .padding(.bottom, 70)
                            Button(action: {
                                print("Button tapped!")
                            }) {
                                Text("Log in")
                                    .font(.custom("AvenirNext-Regular", size: 17))
                                    .foregroundColor(.btn)
                                    .cornerRadius(10)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 70)
                            }
                        } else {
                            Text(exsistingUserPrompt)
                                .font(.custom("AvenirNext-Regular", size: 17))
                                .fontWeight(.semibold)
                                .padding(.top, 40)
                            Button(action: {
                                print("Button tapped!")
                            }) {
                                Text("Log in")
                                    .font(.custom("AvenirNext-Regular", size: 17))
                                    .foregroundColor(.btn)
                                    .cornerRadius(10)
                                    .fontWeight(.semibold)
                                    .padding(.top, 40)
                            }
                        }
                    }
                    .font(.custom("AvenirNext-Regular", size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.highEmphasis)
                    .padding(.top, 600)
                    
                }
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
    
