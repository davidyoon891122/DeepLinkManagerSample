//
//  DeepLinkManagerFeature2.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import Foundation

class DeepLinkManagerFeature2: DeepLinkFeatureManager {
    
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature2") {
            selectedTab = .feature2
            return true
        }
        
        return false
    }
        
}
