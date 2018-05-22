//
//  ViewController.swift
//  colorchange
//
//  Created by Peggy Tsai on 2018/5/20.
//  Copyright © 2018年 Peggy Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jakeBackgroundView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBAction func colorSliderChange(_ sender: Any) {
        jakeBackgroundView.backgroundColor = UIColor (red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        
        let r = String(format: "%.0f", redSlider.value)
        let g = String(format: "%.0f", greenSlider.value)
        let b = String(format: "%.0f", blueSlider.value)
        let a = String(format: "%.0f", alphaSlider.value)
        
        redLabel.text = "R \(r)"
        greenLabel.text = "G \(g)"
        blueLabel.text = "B \(b)"
        alphaLabel.text = "A \(a)"
    }
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    @IBAction func redSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            redSlider.isEnabled = false
            redLabel.isEnabled = false
        } else {
            redSlider.isEnabled = true
            redLabel.isEnabled = true
        }
    }

    @IBAction func greenSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            greenSlider.isEnabled = false
            greenLabel.isEnabled = false
        } else {
            greenSlider.isEnabled = true
            greenLabel.isEnabled = true
        }
    }
    
    @IBAction func blueSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            blueSlider.isEnabled = false
            blueLabel.isEnabled = false
        } else {
            blueSlider.isEnabled = true
            blueLabel.isEnabled = true
        }
    }
    
    @IBAction func alphaSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            alphaSlider.isEnabled = false
            alphaLabel.isEnabled = false
        } else {
            alphaSlider.isEnabled = true
            alphaLabel.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

