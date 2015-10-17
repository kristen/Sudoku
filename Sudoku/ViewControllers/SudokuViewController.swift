//
//  SudokuViewController.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuViewController: UIViewController, SudokuGameBoardViewDelegate {
    
    var sudokuGameBoard: SudokuGameBoardView!
    var game: Sudoku!
    
    var currentSelectedCell: SudokuCellButton?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.title = "Sudoku"
        self.game = Sudoku()
        self.sudokuGameBoard = SudokuGameBoardView(game: self.game)
        self.sudokuGameBoard.delegate = self
        self.view.addSubview(sudokuGameBoard)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inputNumberButtonSelected(sender: InputNumberButton) {
        print("inputNumberButtonSelected")
        
        if let currentSelectedCell = currentSelectedCell {
            if !currentSelectedCell.givenCell! {
                if let currentUserAnswer = currentSelectedCell.value {
                    if (currentUserAnswer == sender.number) {
                        currentSelectedCell.value = .None
                    } else {
                        currentSelectedCell.value = sender.number
                    }
                } else {
                    currentSelectedCell.value = sender.number
                    
                }
            }
        }

        print("input number selected \(sender.number)")

    }
    
    func sudokuCellButtonSelected(sender: SudokuCellButton) {
        print("sudokuCellButtonSelected")
        currentSelectedCell?.layer.borderWidth = 0
        currentSelectedCell = sender
        currentSelectedCell?.layer.borderWidth = 2

        
        print("sudoku cell selected \(sender.sudokuCell?.number)")
}
    
    func sudokuCellFor(row: Int, AndColumn column: Int) -> SudokuCell {
        print("sudokuCellFor\(row) andColumn \(column)")
        
        return self.game.solution[column][row]
    }
}
