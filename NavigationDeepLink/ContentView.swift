//
//  ContentView.swift
//  NavigationDeepLink
//
//  Created by Davidyoon on 1/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var deepLinkManager: DeepLinkManager
    
    var body: some View {
        TabView(selection: $deepLinkManager.selectedTab) {
            Feature1()
                .tabItem {
                    Text("Feature 1")
                }
                .tag(Tab.feature1)
            
            Feature2()
                .tabItem {
                    Text("Feature 2")
                }
                .tag(Tab.feature2)
            
            Feature3()
                .tabItem {
                    Text("Feature 3")
                }
                .tag(Tab.feature3)
        }
    }
}

enum Tab: Hashable {
    case feature1
    case feature2
    case feature3
}

#Preview {
    ContentView(deepLinkManager: .init())
}
