//
//  MacSwiftCrasherApp.swift
//  MacSwiftCrasher
//
//  Created by Robert Galli on 11/29/22.
//

import SwiftUI
import BugsplatMac

@main
struct MacSwiftCrasherApp: App {
    
    init() {
        BugsplatStartupManager.shared().start()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
