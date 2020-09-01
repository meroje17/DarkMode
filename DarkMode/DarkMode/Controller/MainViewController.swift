//
//  MainViewController.swift
//  DarkMode
//
//  Created by Jérôme Guèrin on 01/09/2020.
//  Copyright © 2020 Jérôme Guèrin. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet private var viewToRoundedInFive: [UIView]!
    @IBOutlet private var viewWithBorder: [UIView]!
    @IBOutlet private weak var customTabBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    private func initUI() {
        for view in viewToRoundedInFive {
            view.layer.cornerRadius = 8
        }
        for view in viewWithBorder {
            view.layer.cornerRadius = 15
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor(displayP3Red: 235/255, green: 235/255, blue: 235/255, alpha: 1).cgColor
        }
        customTabBar.layer.cornerRadius = 20
    }
}
