//
//  LoginService.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import Foundation

protocol LoginService {
    func login(with login: String, password: String) -> Bool
}

final class AppLoginService {}

extension AppLoginService: LoginService {
    func login(with login: String, password: String) -> Bool {
        return login == "vitaly" && password == "vitaly"
    }
}
