//
//  DeepLinkManager.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import Foundation

protocol DeepLinkFeatureManager {
    
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool
    
}


@Observable
class DeepLinkManager {
    
    var selectedTab: Tab = .feature1
    private var features: [DeepLinkFeatureManager]
    
    init() {
        self.features = [
            DeepLinkManagerFeature1(),
            DeepLinkManagerFeature2(),
            DeepLinkManagerFeature3()
        ]
    }
    
    func handleDeepLink(deepLink: String) {
        for handler in features {
            if handler.handle(deepLink: deepLink, selectedTab: &selectedTab) {
                return
            }
        }
    }
    
}
