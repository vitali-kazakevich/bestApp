//
//  MainView.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

struct MainView<ViewModel: MainViewModelProtocol>: View {

    @ObservedObject private var viewModel: ViewModel
    private let router: MainRouter

    init(viewModel: ViewModel, router: MainRouter) {
        self.viewModel = viewModel
        self.router = router
    }

    var body: some View {
        if viewModel.currentUser == nil {
            router.loginRoute()
        } else {
            router.mainRoute()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MockViewModel(), router: .init())
    }
}

private class MockViewModel: MainViewModelProtocol {
    var currentUser: User?
}
