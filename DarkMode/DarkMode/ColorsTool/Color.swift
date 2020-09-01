//
//  Color.swift
//  DarkMode
//
//  Created by Jérôme Guèrin on 01/09/2020.
//  Copyright © 2020 Jérôme Guèrin. All rights reserved.
//

import UIKit

enum ColorMode {
    case White, Black
}

final class Color {
    
    var forTheText: UIColor!
    var forTheView: UIColor!
    var forTheSubview: UIColor!
    var forTheBackground: UIColor!
    
    func changeUI(with colorMode: ColorMode) {
        switch colorMode {
        case .White:
            forTheText = UIColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
            forTheView = UIColor.white
            forTheSubview = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
            forTheBackground = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1)
        case .Black:
            forTheText = UIColor.white
            forTheView = UIColor(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
            forTheSubview = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
            forTheBackground = UIColor(red: 192/255, green: 192/255, blue: 192/255, alpha: 1)
        }
    }
}
