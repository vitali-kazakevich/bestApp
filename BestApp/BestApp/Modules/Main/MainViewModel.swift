//
//  MainViewModel.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import Foundation

extension MainViewModel {
    struct Dependencies {
        var loginService: LoginService
    }
}

final class MainViewModel: MainViewModelProtocol {
    private let dependencies: Dependencies

    @Published var currentUser: User?

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
        dependencies.loginService.loggedUser.assign(to: &$currentUser)
    }
}
