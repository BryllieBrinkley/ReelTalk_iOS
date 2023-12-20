//
//  GuidelineAgreementView.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/20/23.
//

import SwiftUI

struct GuidelineAgreementView: View {
    var body: some View {
        ZStack {
            Color.bg
                .ignoresSafeArea(.all)
            
            VStack {
                Image("guidelineAgreement")
                    .frame(width: 239, height: 92)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 280)
                
                Spacer()
                
                
                Button(action: {
                    print("Thanks for checking out my challenge!")
                })
                {
                    Text("I agree")
                        .font(.custom("AvenirNext-Regular", size: 17))
                        .fontWeight(.bold)
                        .frame(width: 300, height: 48)
                        .foregroundColor(.bg)
                        .background(Color.btn)
                        .cornerRadius(8)
                        .padding(.bottom, 50)
                }
            }
        }
    }
}

#Preview {
    GuidelineAgreementView()
}
