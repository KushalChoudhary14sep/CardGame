//
//  ViewController.swift
//  CardGame
//
//  Created by Kushal Choudhary on 22/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var tapButton: UIButton!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTap(_ sender: Any) {
        
        let firstImage = Int.random(in: 1...10)
        
        let secondImage = Int.random(in: 1...10)
        
        firstImageView.image = UIImage(named: "card\(firstImage)")
        
        secondImageView.image = UIImage(named: "card\(secondImage)")
    
    if firstImage > secondImage {
   
    leftScore += 1
    labelOne.text = String(leftScore)
    
    }
   
    else if firstImage < secondImage {
   
    rightScore += 1
    labelTwo.text = String(rightScore)
    }

}

}
