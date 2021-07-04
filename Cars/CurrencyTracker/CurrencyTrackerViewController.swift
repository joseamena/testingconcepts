//
//  CurrencyTrackerViewController.swift
//  Cars
//
//  Created by Jose Mena on 6/30/21.
//

import UIKit

class CurrencyTrackerViewController: UIViewController {

    @IBOutlet weak var currenciesTableView: UITableView!
    private let viewModel: CurrencyTrackerViewModel

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        currenciesTableView.dataSource = self
        currenciesTableView.delegate = self
        currenciesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    init(viewModel: CurrencyTrackerViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "CurrencyTrackerViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CurrencyTrackerViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.availableCurrencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = viewModel.availableCurrencies[indexPath.row]
        return cell
    }
    
}

extension CurrencyTrackerViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCode = viewModel.availableCodes[indexPath.row]
        
        let currencyDetailsViewModel = CurrencyDetailsViewModel(
            code: selectedCode,
            currencyService: DefaultCurrencyService(networkProvider: DefaultNetworkProvider())
        )
        let currencyDetailsViewController = CurrencyDetailsViewController(viewModel: currencyDetailsViewModel)
        
        self.navigationController?.pushViewController(currencyDetailsViewController, animated: true)
    }
}
