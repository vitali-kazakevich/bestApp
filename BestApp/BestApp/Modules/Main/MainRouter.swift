//
//  MainRouter.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

final class MainRouter {
    private let services: ServiceContainer = .shared
    func makeView() -> some View {
        return MainView(
            viewModel: MainViewModel(
                dependencies: .init(loginService: services.resolveDependency())
            ),
            router: self)
    }

    func loginRoute() -> some View {
        return LoginRouter(services: services).makeView()
    }

    func mainRoute() -> some View {
        return HomeRouter(services: services).makeView()
    }
}
