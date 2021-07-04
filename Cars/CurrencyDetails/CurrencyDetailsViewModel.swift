//
//  CurrencyDetailsViewModel.swift
//  Cars
//
//  Created by Jose Mena on 6/30/21.
//

import Foundation

class CurrencyDetailsViewModel {
    
    private let code: String
    private let currencyService: CurrencyService
    
    init(code: String, currencyService: CurrencyService) {
        self.code = code
        self.currencyService = currencyService
        
        setup()
    }
    
    func setup() {
        let a = currencyService.getCurrencyDetails(code: code)
    }
}
