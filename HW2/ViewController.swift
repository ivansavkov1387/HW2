//
//  ViewController.swift
//  HW2
//
//  Created by Иван on 8/23/20.
//  Copyright © 2020 Ivan Savkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redLabel.text = String(lroundf(redSlider.value))
        greenLabel.text = String(lroundf(greenSlider.value))
        blueLabel.text = String(lroundf(blueSlider.value))
        
        
        
    }
    
    @IBAction func redSliderTouch() {
        let redRoundValue = lroundf(redSlider.value)
        redLabel.text = String(redRoundValue)
        mainView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderTouch() {
        let greenRoundValue = lroundf(greenSlider.value)
        greenLabel.text = String(greenRoundValue)
        mainView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)

    }
    
    @IBAction func blueSliderTouch() {
        let blueRoundValue = lroundf(blueSlider.value)
        blueLabel.text = String(blueRoundValue)
        mainView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)

    }
    


}

