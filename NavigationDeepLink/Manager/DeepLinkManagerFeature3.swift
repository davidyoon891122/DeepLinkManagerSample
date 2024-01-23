//
//  DeepLinkManagerFeature3.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import Foundation

class DeepLinkManagerFeature3: DeepLinkFeatureManager {
    
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature3") {
            selectedTab = .feature3
            return true
        }
        
        return false
    }
    
}
