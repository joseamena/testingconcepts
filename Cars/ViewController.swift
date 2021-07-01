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
        
        let vm = CurrencyTrackerViewModel()
        let vc = CurrencyTrackerViewController(viewModel: vm)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false, completion: nil)
        
    }


}

