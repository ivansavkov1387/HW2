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
        
        mainView.layer.cornerRadius = 10
        
        redLabel.text = String(lroundf(redSlider.value * 100))
        greenLabel.text = String(lroundf(greenSlider.value * 100))
        blueLabel.text = String(lroundf(blueSlider.value * 100))
    }
    
    @IBAction func redSliderTouch() {
        redLabel.text = String(lroundf(redSlider.value * 100))
        touchSlider()
    }
    
    @IBAction func greenSliderTouch() {
        greenLabel.text = String(lroundf(greenSlider.value * 100))
        touchSlider()

    }
    
    @IBAction func blueSliderTouch() {
        blueLabel.text = String(lroundf(blueSlider.value * 100))
        touchSlider()
    }
    
    private func touchSlider() {
        mainView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1))

    }
    


}

