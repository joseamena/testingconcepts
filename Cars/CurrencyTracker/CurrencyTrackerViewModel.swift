//
//  CurrencyTrackerViewModel.swift
//  Cars
//
//  Created by Jose Mena on 6/30/21.
//

import Foundation


class CurrencyTrackerViewModel {
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
        let ret = currencies.values.map({$0})
        print(ret)
        return ret
    }
}
