//
//  ViewController.swift
//  Dicee@IOS16
//
//  Created by Anar Abbas on 10.01.2023.
//


import UIKit

class ViewController: UIViewController {
    
    
    enum Turn {
        case Gamer1
        case Gamer2
    }
    
    
    @IBOutlet weak var turnLabel: UILabel!
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    
    var firstTurn = Turn.Gamer1
    var currentTurn = Turn.Gamer1
    
    var Gamer1 = "Gamer1"
    var Gamer2 = "Gamer2"
    var board = [UIButton]()
    
    var gamer1Score = 0
    var gamer2Score = 0
    
    
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        
        let leftNumber = Int.random(in: 1...5)
        let rightNumber = Int.random(in: 1...5)
        
        
        imageView1.image = UIImage(named: "Dice\(leftNumber)")
        
        imageView2.image = UIImage(named: "Dice\(rightNumber)")
        
        
    }
    
    
    
    
    
    func resetBoard()
    {
        for button in board
        {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if firstTurn == Turn.Gamer2
        {
            firstTurn = Turn.Gamer1
            turnLabel.text = Gamer1
        }
        else if firstTurn == Turn.Gamer1
        {
            firstTurn = Turn.Gamer2
            turnLabel.text = Gamer2
        }
        currentTurn = firstTurn
    }
    
    func addToBoard(_ sender: UIButton)
    {
        if(sender.title(for: .normal) == nil)
        {
            if(currentTurn == Turn.Gamer2)
            {
                sender.setTitle(Gamer2, for: .normal)
                currentTurn = Turn.Gamer1
                turnLabel.text = Gamer1
            }
            else if(currentTurn == Turn.Gamer1 )
            {
                sender.setTitle(Gamer1, for: .normal)
                currentTurn = Turn.Gamer2
                turnLabel.text = Gamer2
            }
            sender.isEnabled = false
        }
        
        
    }
    
}
