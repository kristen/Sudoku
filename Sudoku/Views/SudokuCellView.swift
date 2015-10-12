//
//  SudokuCellView.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuCellView: UIButton {
    
    let sudokuCell: SudokuCell
    
    init(frame: CGRect, sudokuCell: SudokuCell) {
        self.sudokuCell = sudokuCell
        super.init(frame: frame)
        self.backgroundColor = UIColor.purpleColor()
        
        if (sudokuCell.given) {
            self.setTitle(String(self.sudokuCell.number), forState: UIControlState.Normal)
        }

        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.titleLabel!.adjustsFontSizeToFitWidth = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
