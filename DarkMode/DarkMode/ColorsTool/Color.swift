//
//  Color.swift
//  DarkMode
//
//  Created by Jérôme Guèrin on 01/09/2020.
//  Copyright © 2020 Jérôme Guèrin. All rights reserved.
//

import UIKit

enum ColorMode {
    case light, black
}

final class Color {
    
    var forTheText: UIColor!
    var forTheView: UIColor!
    var forTheSubview: UIColor!
    var forTheBackground: UIColor!
    var forTheBackgroundButton: UIColor!
    
    func changeUI(with colorMode: ColorMode) {
        switch colorMode {
        case .light:
            forTheText = UIColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
            forTheView = UIColor.white
            forTheSubview = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
            forTheBackground = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1)
            forTheBackgroundButton = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        case .black:
            forTheText = UIColor.white
            forTheView = UIColor(red: 60/255, green: 60/255, blue: 60/255, alpha: 1)
            forTheSubview = UIColor(red: 130/255, green: 130/255, blue: 130/255, alpha: 1)
            forTheBackground = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
            forTheBackgroundButton = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
        }
    }
}
