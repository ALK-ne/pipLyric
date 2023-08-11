//
//  WebKitViewController.swift
//  pipLyric
//
//  Created by aaa on 2023/08/11.
//

import Foundation
import UIKit
// WebKitをimportする
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let loardUrl: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: loardUrl)
        uiView.scrollView.bouncesZoom = false
        uiView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(loardUrl: URL(string: "https://music.apple.com/jp/browse")!)
    }
}
