//
//  MainViewController.swift
//  DarkMode
//
//  Created by Jérôme Guèrin on 01/09/2020.
//  Copyright © 2020 Jérôme Guèrin. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Property
    // The reference for color elements
    private var colorsReference = Color()
    
    // MARK: - Outlets
    
    // Outlets to rounded
    @IBOutlet private var viewToRoundedInFive: [UIView]!
    @IBOutlet private var viewWithBorder: [UIView]!
    @IBOutlet private weak var customTabBar: UIView!
    
    // Outlets to colored
    @IBOutlet private var textsCollection: [UILabel]!
    @IBOutlet private var viewsColor: [UIView]!
    @IBOutlet private var subviewsColor: [UIView]!
    @IBOutlet private var backgroundViewColor: UIView!
    
    // tool to recognize the changement of color mode
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    
    // MARK: - Initializer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsReference.changeUI(with: .light)
        initUI()
    }
    
    // MARK: - Action
    
    // When user want change color mode
    @IBAction private func valueChanged() {
        // According to the segment selected in button, change color mode in consequence
        // - First of all, change all color in the reference
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            colorsReference.changeUI(with: .light)
        case 1:
            colorsReference.changeUI(with: .black)
        default:
            colorsReference.changeUI(with: .light)
        }
        // - Secondly, take the color in reference and update UI within
        assignColors()
    }
    
    // MARK: - Private functions
    
    // First method used : to init UI
    private func initUI() {
        roundedView()
        assignColors()
    }
    
    // Method to round all views which need it (+ add border sometimes)
    private func roundedView() {
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
    
    // Method to assign color in user interface according to the usual color mode
    private func assignColors() {
        for text in textsCollection {
            text.textColor = colorsReference.forTheText
        }
        for view in viewsColor {
            view.backgroundColor = colorsReference.forTheView
        }
        for subview in subviewsColor {
            subview.backgroundColor = colorsReference.forTheSubview
        }
        backgroundViewColor.backgroundColor = colorsReference.forTheBackground
        segmentedControl.backgroundColor = colorsReference.forTheBackgroundButton
    }
}
