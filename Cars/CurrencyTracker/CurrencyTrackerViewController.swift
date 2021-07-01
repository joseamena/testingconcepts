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
        
    }
    
    private func setup() {
        currenciesTableView.dataSource = self
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
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.availableCurrencies[indexPath.row]
        return cell
    }
}
