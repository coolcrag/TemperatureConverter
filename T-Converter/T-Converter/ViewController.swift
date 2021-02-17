//
//  ViewController.swift
//  T-Converter
//
//  Created by Дмитрий Лапшин on 04.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(sender.value)
        cLabel.text = "\(temperatureCelsius)ºC"
        
        let fTemperature = Int((sender.value * 9 / 5) + 32)
        fLabel.text = "\(fTemperature)ºF"
        
    }
}

