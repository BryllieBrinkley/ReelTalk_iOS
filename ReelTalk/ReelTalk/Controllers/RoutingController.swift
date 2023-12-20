//
//  OnboardController.swift
//  ReelTalk
//
//  Created by Jibryll Brinkley on 12/19/23.
//

import Foundation
import SwiftUI


class RoutingController: UIViewController {
    
    @Published var genreCount: Int = 0
    
    func routeToNotifctionScreen() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: PushNotificationView())
            window.makeKeyAndVisible()
        }
    }
    
    func routeToFinalOnboardingView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: FinalOnboardingView())
            window.makeKeyAndVisible()
        }
        
    }
    
    func routeToGenreSelectionView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView:
                                                                /*GenreSelectionView(isSelected: .constant(false), color: .bg, text: "Genre")*/GenreSelectionView())
            window.makeKeyAndVisible()
        }
    }
    
    func routeToMovieSelectionView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: MovieSelectionView())
            window.makeKeyAndVisible()
        }
    }
    
    func routeToTVShowSelectionView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: TVShowSelectionView())
            window.makeKeyAndVisible()
        }
    }
    
    func routeToGuidelineAgreementView() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            window.rootViewController = UIHostingController(rootView: GuidelineAgreementView())
            window.makeKeyAndVisible()
        }
    }

}
