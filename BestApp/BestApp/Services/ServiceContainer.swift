//
//  ServiceContainer.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import Foundation

final class ServiceContainer {
    static let shared: ServiceContainer = .init()
    private init() {}
    
    private let loginService: LoginService = AppLoginService()
    
    private lazy var services: [Any] = [loginService]
}

extension ServiceContainer {
    func resolveDependency<T>() -> T {
        return services.lazy.compactMap { $0 as? T }.first!
    }
}
