//
//  FinancesMainViewModel.swift
//  BestApp
//
//  Created by Kazakevich, Vitaly on 11.10.21.
//

import Combine

extension FinancesMainViewModel {
    struct Dependencies {}
}

final class FinancesMainViewModel: FinancesMainViewModelProtocol {
    private let dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
}
