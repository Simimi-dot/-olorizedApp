//
//  ViewController.swift
//  СolorizedApp
//
//  Created by Егор Астахов on 21.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // colorView customize
        colorView.layer.cornerRadius = 10
        
        // redSliedr customize
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.value = 128
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .black
        
        redValue.text = String(Int(redSlider.value))
        
        // greenSlider customize
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.value = 128
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .black
        
        greenValue.text = String(Int(greenSlider.value))
        
        // blueSlider customize
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.value = 128
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .black
        
        blueValue.text = String(Int(blueSlider.value))
        
        colorViewCustomize()
        
    }
    
    func colorViewCustomize() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: 1)
    }
    
    
    @IBAction func rgbView(_ sender: UISlider) {
        colorViewCustomize()
        
        switch sender.tag {
        case 0:
            redValue.text = String(Int(redSlider.value))
        case 1:
            greenValue.text = String(Int(greenSlider.value))
        case 2:
            blueValue.text = String(Int(blueSlider.value))
        default:
            break
        }
    }
    

}

