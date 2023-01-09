//
//  ViewController.swift
//  Dicee@IOS16
//
//  Created by Anar Abbas on 10.01.2023.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    
   
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        
        let leftNumber = Int.random(in: 1...5)
        let rightNumber = Int.random(in: 1...5)

   
        imageView1.image = UIImage(named: "Dice\(leftNumber)")
                                    
        imageView2.image = UIImage(named: "Dice\(rightNumber)")

        
    }
}


