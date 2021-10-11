//
//  HomeView.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

struct HomeView: View {
    private let router: HomeRouter

    init(router: HomeRouter) {
        self.router = router
    }

    var body: some View {
        TabView {
            router.financeTab()
                .tabItem {
                    Label("Finance", systemImage: "dollarsign.circle")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(router: .init(services: .shared))
    }
}
