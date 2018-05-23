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

        redLabel.text = "R \(String(format: "%.0f", redSlider.value * 255))"
        greenLabel.text = "G \(String(format: "%.0f", greenSlider.value * 255))"
        blueLabel.text = "B \(String(format: "%.0f", blueSlider.value * 255))"
        alphaLabel.text = "A \(String(format: "%.0f", alphaSlider.value * 255))"
    }
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    @IBAction func redSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            redSlider.isEnabled = false
            redSlider.minimumTrackTintColor = UIColor.lightGray
            redLabel.isEnabled = false
        } else {
            redSlider.isEnabled = true
            redSlider.minimumTrackTintColor = UIColor.red
            redLabel.isEnabled = true
        }
    }

    @IBAction func greenSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            greenSlider.isEnabled = false
            greenSlider.minimumTrackTintColor = UIColor.lightGray
            greenLabel.isEnabled = false
        } else {
            greenSlider.isEnabled = true
            greenSlider.minimumTrackTintColor = UIColor.green
            greenLabel.isEnabled = true
        }
    }
    
    @IBAction func blueSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            blueSlider.isEnabled = false
            blueSlider.minimumTrackTintColor = UIColor.lightGray
            blueLabel.isEnabled = false
        } else {
            blueSlider.isEnabled = true
            blueSlider.minimumTrackTintColor = UIColor.blue
            blueLabel.isEnabled = true
        }
    }
    
    @IBAction func alphaSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            alphaSlider.isEnabled = false
            alphaSlider.minimumTrackTintColor = UIColor.lightGray
            alphaLabel.isEnabled = false
        } else {
            alphaSlider.isEnabled = true
            alphaSlider.minimumTrackTintColor = UIColor.darkGray
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

