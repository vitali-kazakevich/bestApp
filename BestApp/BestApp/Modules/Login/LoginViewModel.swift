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
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func submit() {
        dependencies.loginService.login(with: login, password: password)
    }
}
