//
//  SudokuViewController.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuViewController: UIViewController {
    
    var sudokuGameBoard: SudokuGameBoardView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = UIRectEdge.None
        self.title = "Sudoku"
        self.sudokuGameBoard = SudokuGameBoardView()
        self.view.addSubview(sudokuGameBoard)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
