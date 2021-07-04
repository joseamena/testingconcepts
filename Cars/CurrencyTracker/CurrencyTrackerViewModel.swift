//
//  CurrencyTrackerViewModel.swift
//  Cars
//
//  Created by Jose Mena on 6/30/21.
//

import Foundation


class CurrencyTrackerViewModel {
    
    private let currencyService: CurrencyService
    
    init(currencyService: CurrencyService) {
        self.currencyService = currencyService
    }
    
    private let currencies: [String : String] =
        [
            "BTC" : "Bitcoin",
            "ETH": "Ethereum",
            "LTC": "Litecoin"
        ]
    
    func getCurrency(code: String) -> String? {
        return currencies[code]
    }
    
    var availableCurrencies: [String] {
        let ret = Array(currencies.values)
        return ret
    }
    
    var availableCodes: [String] {
        return Array(currencies.keys)
    }
}
