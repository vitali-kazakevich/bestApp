//
//  FinancesMainRouter.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import SwiftUI

final class FinancesMainRouter {
    private let services: ServiceContainer

    init(services: ServiceContainer) {
        self.services = services
    }

    func makeView() -> some View {
        return FinancesMainView(viewModel: FinancesMainViewModel(dependencies: .init()), router: self)
    }
}
