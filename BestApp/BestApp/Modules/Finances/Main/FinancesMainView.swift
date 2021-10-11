//
//  FinancesMainView.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

struct FinancesMainView<ViewModel: FinancesMainViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    private let router: FinancesMainRouter

    init(viewModel: ViewModel, router: FinancesMainRouter) {
        self.viewModel = viewModel
        self.router = router
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FinancesMainView_Previews: PreviewProvider {
    static var previews: some View {
        FinancesMainView(viewModel: MockViewModel(), router: .init(services: .shared))
    }
}

private class MockViewModel: FinancesMainViewModelProtocol {

}
