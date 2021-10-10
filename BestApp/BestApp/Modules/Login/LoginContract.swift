//
//  LoginContract.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import Combine

protocol LoginViewModelProtocol: ObservableObject {
    var login: String { get set }
    var password: String { get set }
    var isLoggedIn: Bool { get }
    
    func submit()
}
