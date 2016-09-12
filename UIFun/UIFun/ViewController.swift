//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var firstColorChoice: UISegmentedControl!
    
    @IBOutlet weak var secondColorChoice: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.redColor()
    }
    
    
    
    func mixColors(withFirst first: String, second: String) -> String {
        
        if first == "red" && second == "red" {
            return "red"
        }
        
        
        if first == "red" && second == "yellow" {
            return "orange"
        }
        
        
        if first == "red" && second == "blue" {
            return "purple"
        }
        
        
        
        if first == "yellow" && second == "red" {
            return "orange"
        }
        
        
        if first == "yellow" && second == "yellow" {
            return "yellow"
        }
        
        
        if first == "yellow" && second == "blue" {
            return "green"
        }
        
        
        if first == "blue" && second == "red" {
            return "purple"
        }
        
        
        if first == "blue" && second == "yellow" {
            return "green"
        }
        
        
        if first == "blue" && second == "blue" {
            return "blue"
        }
            
            
        else {
            return "red"
            
        }
        
        
    }
    
    
    
    @IBAction func colorSelected(sender: UISegmentedControl) {
        
        let segmentOne = firstColorChoice.selectedSegmentIndex
        let segmentTwo = secondColorChoice.selectedSegmentIndex
        
        switch true {
        case segmentOne == 0 && segmentTwo == 0:
            paintBucket.paintColorName = mixColors(withFirst: "red", second: "red")
            
        case segmentOne == 0 && segmentTwo == 1:
            paintBucket.paintColorName = mixColors(withFirst: "red", second: "yellow")
            
        case segmentOne == 0 && segmentTwo == 2:
            paintBucket.paintColorName = mixColors(withFirst: "red", second: "blue")
            
        case segmentOne == 1 && segmentTwo == 0:
            paintBucket.paintColorName = mixColors(withFirst: "yellow", second: "red")
            
        case segmentOne == 1 && segmentTwo == 1:
            paintBucket.paintColorName = mixColors(withFirst: "yellow", second: "yellow")
            
        case segmentOne == 1 && segmentTwo == 2:
            paintBucket.paintColorName = mixColors(withFirst: "yellow", second: "blue")
            
        case segmentOne == 2 && segmentTwo == 0:
            paintBucket.paintColorName = mixColors(withFirst: "blue", second: "red")
            
        case segmentOne == 2 && segmentTwo == 1:
            paintBucket.paintColorName = mixColors(withFirst: "blue", second: "yellow")
            
        case segmentOne == 2 && segmentTwo == 1:
            paintBucket.paintColorName = mixColors(withFirst: "blue", second: "blue")
            
        default:
            paintBucket.paintColorName = mixColors(withFirst: "red", second: "red")
            
        }
        
        
    }
}
