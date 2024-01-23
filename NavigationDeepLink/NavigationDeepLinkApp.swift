//
//  NavigationDeepLinkApp.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import SwiftUI

@main
struct NavigationDeepLinkApp: App {
    
    let deepLinkManager = DeepLinkManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(deepLinkManager: deepLinkManager)
                .onOpenURL(perform: { url in
                    print(url)
                    deepLinkManager.handleDeepLink(deepLink: url.absoluteString.lowercased())
                })
        }
    }
}
