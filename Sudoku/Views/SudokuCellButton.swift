//
//  SudokuCellButton.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuCellButton: UIButton {
    
    // TODO remove when done
    var sudokuCell: SudokuCell? {
        didSet {
            self.givenCell = sudokuCell!.given
            if self.givenCell! {
                self.value = sudokuCell!.number
            } else {
                self.value = .None
            }
            if let value = self.value {
                self.setTitle(String(value), forState: UIControlState.Normal)
                self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            } else {
                self.setTitleColor(UIColor.redColor(), forState: .Normal)
            }
        }
    }
    
    var givenCell: Bool?
    var value: Int? {
        didSet {
            if let number = value {
                self.setTitle(String(number), forState: .Normal)
            } else {
                self.setTitle("", forState: .Normal)
        
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purpleColor()
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.yellowColor().CGColor
        
//        self.titleLabel!.adjustsFontSizeToFitWidth = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
