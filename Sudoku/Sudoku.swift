//
//  Sudoku.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/11/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import Foundation

struct SudokuCell {
    let number: Int
    let given: Bool
}

class Sudoku {
    let solution: [[SudokuCell]]
    
    init() {
        solution = [
            [SudokuCell(number: 3, given: true), SudokuCell(number: 6, given: false), SudokuCell(number: 1, given: true), SudokuCell(number: 7, given: true), SudokuCell(number: 9, given: false), SudokuCell(number: 8, given: true), SudokuCell(number: 4, given: true), SudokuCell(number: 2, given: false), SudokuCell(number: 5, given: false)],
            
            [SudokuCell(number: 7, given: true), SudokuCell(number: 8, given: false), SudokuCell(number: 2, given: false), SudokuCell(number: 6, given: true), SudokuCell(number: 5, given: false), SudokuCell(number: 4, given: false), SudokuCell(number: 9, given: true), SudokuCell(number: 1, given: false), SudokuCell(number: 3, given: false)],
            
            [SudokuCell(number: 9, given: false), SudokuCell(number: 5, given: true), SudokuCell(number: 4, given: false), SudokuCell(number: 2, given: true), SudokuCell(number: 1, given: false), SudokuCell(number: 3, given: false), SudokuCell(number: 8, given: true), SudokuCell(number: 7, given: true), SudokuCell(number: 6, given: false)],
            
            [SudokuCell(number: 2, given: false), SudokuCell(number: 3, given: false), SudokuCell(number: 6, given: true), SudokuCell(number: 4, given: false), SudokuCell(number: 8, given: true), SudokuCell(number: 9, given: true), SudokuCell(number: 1, given: true), SudokuCell(number: 5, given: true), SudokuCell(number: 7, given: false)],
            
            [SudokuCell(number: 5, given: true), SudokuCell(number: 4, given: true), SudokuCell(number: 9, given: false), SudokuCell(number: 1, given: true), SudokuCell(number: 3, given: true), SudokuCell(number: 7, given: false), SudokuCell(number: 6, given: false), SudokuCell(number: 8, given: true), SudokuCell(number: 2, given: true)],
            
            [SudokuCell(number: 8, given: false), SudokuCell(number: 1, given: false), SudokuCell(number: 7, given: true), SudokuCell(number: 5, given: false), SudokuCell(number: 6, given: true), SudokuCell(number: 2, given: true), SudokuCell(number: 3, given: false), SudokuCell(number: 9, given: false), SudokuCell(number: 4, given: false)],
            
            [SudokuCell(number: 1, given: false), SudokuCell(number: 7, given: false), SudokuCell(number: 5, given: true), SudokuCell(number: 9, given: false), SudokuCell(number: 4, given: true), SudokuCell(number: 6, given: false), SudokuCell(number: 2, given: true), SudokuCell(number: 3, given: false), SudokuCell(number: 8, given: true)],
            
            [SudokuCell(number: 6, given: false), SudokuCell(number: 2, given: true), SudokuCell(number: 3, given: false), SudokuCell(number: 8, given: false), SudokuCell(number: 7, given: false), SudokuCell(number: 1, given: true), SudokuCell(number: 5, given: false), SudokuCell(number: 4, given: true), SudokuCell(number: 9, given: false)],
            
            [SudokuCell(number: 4, given: true), SudokuCell(number: 9, given: true), SudokuCell(number: 8, given: false), SudokuCell(number: 3, given: true), SudokuCell(number: 2, given: false), SudokuCell(number: 5, given: false), SudokuCell(number: 7, given: true), SudokuCell(number: 6, given: false), SudokuCell(number: 1, given: false)]
        ]
    }
}