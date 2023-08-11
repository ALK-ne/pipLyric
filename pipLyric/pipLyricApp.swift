//
//  pipLyricApp.swift
//  pipLyric
//
//  Created by aaa on 2023/08/06.
//

import SwiftUI

@main
struct pipLyricApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            WebView(loardUrl: URL(string: "https://music.apple.com/jp/browse")!)
        }
    }
}
