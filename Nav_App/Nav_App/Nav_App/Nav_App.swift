//
//  Nav_App.swift
//  Nav_App
//
//  Created by Frankie Barrios on 8/8/22.
//

import SwiftUI

@main
struct Nav_App: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 16.0, *) {
                ContentView()
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
