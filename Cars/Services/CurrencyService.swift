//
//  CurrencyService.swift
//  Cars
//
//  Created by Jose Mena on 7/4/21.
//

import Foundation

protocol CurrencyService {
    func getCurrencyDetails(code: String) -> [String : String]
    func getAvailableCurrencies() -> [Coin]
    
}

class DefaultCurrencyService: CurrencyService {
    
    let networkProvider: NetworkProvider
    
    init(networkProvider: NetworkProvider) {
        self.networkProvider = networkProvider
    }
    
    func getAvailableCurrencies() -> [Coin] {
        networkProvider.sendRequest(
            urlString: "https://coingecko.p.rapidapi.com/coins/list",
            completion: { _ in }
        )
        return []
    }
    
    func getCurrencyDetails(code: String) -> [String : String] {
        return [:]
    }
}
