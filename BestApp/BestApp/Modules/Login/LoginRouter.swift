//
//  LoginRouter.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import SwiftUI

struct LoginRouter {
    private let services: ServiceContainer
    
    init(services: ServiceContainer) {
        self.services = services
    }
    
    func makeView() -> some View {
        return LoginView(viewModel: LoginViewModel(dependencies: .init(loginService: services.resolveDependency())))
    }
}
