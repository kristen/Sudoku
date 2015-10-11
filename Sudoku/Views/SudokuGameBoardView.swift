//
//  SudokuGameBoardView.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

class SudokuGameBoardView: UIView {
    
    init() {
        super.init(frame: UIScreen.mainScreen().bounds)
        
        let gameBoardSize = UIScreen.mainScreen().bounds.width
        let sectionDividerWidth: CGFloat = 5
        let remainingGameBoardSize: CGFloat = gameBoardSize - 2 * sectionDividerWidth
        let sectionSize: CGFloat = remainingGameBoardSize / 3
        
        let sectionView1 = UIView(frame: CGRectMake(sectionSize, 0, sectionDividerWidth, gameBoardSize))
        let sectionView2 = UIView(frame: CGRectMake(sectionSize * 2 + sectionDividerWidth, 0, sectionDividerWidth, gameBoardSize))
        let sectionView3 = UIView(frame: CGRectMake(0, sectionSize, gameBoardSize, sectionDividerWidth))
        let sectionView4 = UIView(frame: CGRectMake(0, sectionSize * 2 + sectionDividerWidth, gameBoardSize, sectionDividerWidth))
        
        sectionView1.backgroundColor = UIColor.blackColor()
        sectionView2.backgroundColor = UIColor.blackColor()
        sectionView3.backgroundColor = UIColor.blackColor()
        sectionView4.backgroundColor = UIColor.blackColor()
        
        
        self.backgroundColor = UIColor.orangeColor()
        self.addSubview(sectionView1)
        self.addSubview(sectionView2)
        self.addSubview(sectionView3)
        self.addSubview(sectionView4)
        
        let spaceBetweenCells: CGFloat = 5
        let cellSize: CGFloat = (sectionSize - 2 * spaceBetweenCells) / 3
        
        let numberButtonYPosition = gameBoardSize + (UIScreen.mainScreen().bounds.height - gameBoardSize) / 2
        
        for row in 0...8 {
            let xPosition = CGFloat(row) * cellSize + CGFloat(row) * spaceBetweenCells
            
            let numberButtonFrame = CGRectMake(xPosition, numberButtonYPosition, cellSize, cellSize)
            let inputButton = InputNumberButton(frame: numberButtonFrame, number: row + 1)
            
            inputButton.addTarget(self, action: "click:", forControlEvents: UIControlEvents.TouchUpInside)
            self.addSubview(inputButton)
            
            for column in 0...8 {
                let yPosition = CGFloat(column) * cellSize + CGFloat(column) * spaceBetweenCells
                let cellFrame = CGRectMake(xPosition, yPosition, cellSize, cellSize)
                let sudokuCellView = SudokuCellView(frame: cellFrame)
                self.addSubview(sudokuCellView)

            }
        }
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func click(sender: InputNumberButton) {
        print(sender.number)
    }
    
}
