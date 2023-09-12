//
//  ContentView.swift
//  SampleLaunch
//
//  Created by Nao RandD on 2023/09/10.
//

import SwiftUI

struct ContentView: View {
    @State var togglePreview = false

    var body: some View {
        ScrollView {
            // MARK: AASAを配置したドメイン
            let appClipURL = URL(
                string: "https://chatgpt-is-god.web.app"
            )!
            Text("AASAを配置したドメイン")
                .font(.title2)
                .padding(.bottom)
            Link("Go to App Clip by AASA", destination: appClipURL)
            URLPreview(previewURL: appClipURL, togglePreview: $togglePreview)
                .aspectRatio(contentMode: .fit)
                .padding()
            Divider()

            // MARK: Default App Clip Link
            Text("Default App Clip Link\n（リリース済み）")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            let defaultAppClipURL = URL(
                string: "https://appclip.apple.com/id?p=jp.tret.konakano.Clip"
            )!
            Link("Default App Clip Link", destination: defaultAppClipURL)
            URLPreview(previewURL: defaultAppClipURL, togglePreview: $togglePreview)
                .aspectRatio(contentMode: .fit)
                .padding()

            // MARK: Default App Clip Link（未リリース）
            Text("Default App Clip Link\n（未リリース）")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            let myDefaultAppClipURL = URL(
                string: "https://appclip.apple.com/id?p=com.naorandd.ChatGPTisGodApp.Clip"
            )!
            Link("Default App Clip Link", destination: myDefaultAppClipURL)
            URLPreview(previewURL: myDefaultAppClipURL, togglePreview: $togglePreview)
                .aspectRatio(contentMode: .fit)
                .padding()
        }
        .padding(.all, 20)
    }
}
