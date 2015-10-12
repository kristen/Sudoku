//
//  InputNumberButton.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class InputNumberButton: UIButton {

    let number: Int
    
    init(frame: CGRect, number: Int) {
        self.number = number
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        self.setTitle(String(self.number), forState: UIControlState.Normal)
        self.setTitleColor(UIColor.blackColor(), forState: .Normal)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
