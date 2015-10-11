//
//  SudokuCellView.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuCellView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purpleColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
