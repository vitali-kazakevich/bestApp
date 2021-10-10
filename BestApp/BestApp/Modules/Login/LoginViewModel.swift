//
//  LoginViewModel.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import Combine

extension LoginViewModel {
    struct Dependencies {
        var loginService: LoginService
    }
}

final class LoginViewModel: LoginViewModelProtocol {
    @Published var login = ""
    @Published var password = ""
    @Published var isLoggedIn = false
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func submit() {
        isLoggedIn = dependencies.loginService.login(with: login, password: password)
    }
}
