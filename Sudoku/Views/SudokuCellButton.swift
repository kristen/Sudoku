//
//  SudokuCellButton.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuCellButton: UIButton {
    
    let sudokuCell: SudokuCell
    var userAnswer: Int? {
        didSet {
            if case let number? = userAnswer {
                self.setTitle(String(number), forState: .Normal)
            } else {
                self.setTitle("", forState: .Normal)
        
            }
        }
    }
    
    init(frame: CGRect, sudokuCell: SudokuCell) {
        self.sudokuCell = sudokuCell
        super.init(frame: frame)
        self.backgroundColor = UIColor.purpleColor()
        
        if (sudokuCell.given) {
            self.setTitle(String(self.sudokuCell.number), forState: UIControlState.Normal)
            self.setTitleColor(UIColor.whiteColor(), forState: .Normal)

        } else {
            self.setTitleColor(UIColor.redColor(), forState: .Normal)
        }
        
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.yellowColor().CGColor
        
//        self.titleLabel!.adjustsFontSizeToFitWidth = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
