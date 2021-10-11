//
//  BestAppApp.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import SwiftUI

@main
struct BestAppApp: App {
    var body: some Scene {
        WindowGroup {
            MainRouter().makeView()
        }
    }
}
