//
//  HomeRouter.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

final class HomeRouter {
    private let services: ServiceContainer

    init(services: ServiceContainer) {
        self.services = services
    }

    func makeView() -> some View {
        return HomeView()
    }
}
