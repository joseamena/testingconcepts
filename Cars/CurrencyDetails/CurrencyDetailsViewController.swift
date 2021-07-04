//
//  CurrencyDetailsViewController.swift
//  Cars
//
//  Created by Jose Mena on 6/30/21.
//

import UIKit

class CurrencyDetailsViewController: UIViewController {
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    
    private let viewModel: CurrencyDetailsViewModel
    
    init(viewModel: CurrencyDetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "CurrencyDetailsViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nameLabel.text = viewModel.code
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
