//
//  SudokuGameBoardView.swift
//  Sudoku
//
//  Created by Kristen Sundquist on 10/10/15.
//  Copyright © 2015 Kristen Sundquist. All rights reserved.
//

import UIKit

protocol SudokuGameBoardViewDelegate: class {
    func inputNumberButtonSelected(sender: InputNumberButton)
    func sudokuCellButtonSelected(sender: SudokuCellButton)
}

class SudokuGameBoardView: UIView {
    
    var delegate: SudokuGameBoardViewDelegate?
    var displayTimeLabel: UILabel!
    var startTime = NSTimeInterval()
    var timer = NSTimer()
    
    init(game: Sudoku) {
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
            
            inputButton.addTarget(self.delegate, action: "inputNumberButtonSelected:", forControlEvents: UIControlEvents.TouchUpInside)
            self.addSubview(inputButton)
            
            for column in 0...8 {
                let yPosition = CGFloat(column) * cellSize + CGFloat(column) * spaceBetweenCells
                let cellFrame = CGRectMake(xPosition, yPosition, cellSize, cellSize)
                let sudokuCellView = SudokuCellButton(frame: cellFrame)
                sudokuCellView.sudokuCell = game.solution[column][row]
                sudokuCellView.addTarget(self.delegate, action: "sudokuCellButtonSelected:", forControlEvents: UIControlEvents.TouchUpInside)
                self.addSubview(sudokuCellView)
            }
        }
        
        self.displayTimeLabel = UILabel(frame: CGRectMake(0, numberButtonYPosition + 40, 100, 50))
        self.displayTimeLabel.text = "00:00"
        self.addSubview(self.displayTimeLabel)
        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateTime", userInfo: nil, repeats: true)
        startTime = NSDate.timeIntervalSinceReferenceDate()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateTime() {
        
        let currentTime = NSDate.timeIntervalSinceReferenceDate()
        
        //Find the difference between current time and start time.
        
        var elapsedTime: NSTimeInterval = currentTime - startTime
        
        //calculate the minutes in elapsed time.
        
        let minutes = UInt8(elapsedTime / 60.0)
        
        elapsedTime -= (NSTimeInterval(minutes) * 60)
        
        //calculate the seconds in elapsed time.
        
        let seconds = UInt8(elapsedTime)
        
        elapsedTime -= NSTimeInterval(seconds)
        
        //add the leading zero for minutes, seconds and millseconds and store them as string constants
        
        let strMinutes = String(format: "%02d", minutes)
        let strSeconds = String(format: "%02d", seconds)
        
        //concatenate minuets, seconds and milliseconds as assign it to the UILabel
        
        displayTimeLabel.text = "\(strMinutes):\(strSeconds)"
        
    }
}
