//
//  LoginService.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import Combine

protocol LoginService {
    var loggedUser: AnyPublisher<User?, Never> { get }
    func login(with login: String, password: String)
    func logout()
}

final class AppLoginService {
    @Published private var loggedUserValue: User?
}

extension AppLoginService: LoginService {
    var loggedUser: AnyPublisher<User?, Never> {
        return $loggedUserValue.eraseToAnyPublisher()
    }

    func login(with login: String, password: String) {
        if login.lowercased() == "vitaly" && password.lowercased() == "vitaly" {
            loggedUserValue = User(name: "Vitaly")
        }
    }

    func logout() {
        loggedUserValue = nil
    }
}
