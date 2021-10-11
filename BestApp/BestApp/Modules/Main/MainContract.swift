//
//  MainContract.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import Combine

protocol MainViewModelProtocol: ObservableObject {
    var currentUser: User? { get }
}
