//
//  DeepLinkManagerFeature1.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import Foundation

class DeepLinkManagerFeature1: DeepLinkFeatureManager {
    
    func handle(deepLink: String, selectedTab: inout Tab) -> Bool {
        if deepLink.contains("feature1") {
            selectedTab = .feature1
            return true
        }
        
        return false
    }
    
}
