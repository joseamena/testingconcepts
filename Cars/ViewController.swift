//
//  ViewController.swift
//  Cars
//
//  Created by Jose Mena on 6/27/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let vm = CurrencyTrackerViewModel(
            currencyService: DefaultCurrencyService(networkProvider: DefaultNetworkProvider())
        )
        let vc = CurrencyTrackerViewController(viewModel: vm)
        
        let navigationController = UINavigationController(rootViewController: vc)

        navigationController.modalPresentationStyle = .fullScreen

        self.present(navigationController, animated: false, completion: nil)
    }
}

