//
//  ViewController.swift
//  Lesson 2-2
//
//  Created by Кирилл Лапковский on 17.03.2023.
//

import UIKit

var alphaValue = (false, false, false)

class ViewController: UIViewController {
    @IBOutlet var redColorTrafficLight: UIView!
    @IBOutlet var yellowColorTrafficLight: UIView!
    @IBOutlet var greenColorTrafficLight: UIView!
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorTrafficLight.layer.cornerRadius = 73
        yellowColorTrafficLight.layer.cornerRadius = 73
        greenColorTrafficLight.layer.cornerRadius = 73
        switchButton.layer.cornerRadius = 15
        
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        changeLight()
    }
    
    private func changeLight() {
        switch alphaValue {
        case (false, false, false):
            redColorTrafficLight.alpha = 1.0
            alphaValue.0.toggle()
        case (true, false, false):
            redColorTrafficLight.alpha = 0.3
            yellowColorTrafficLight.alpha = 1.0
            alphaValue.0.toggle()
            alphaValue.1.toggle()
        case (false, true, false):
            yellowColorTrafficLight.alpha = 0.3
            greenColorTrafficLight.alpha = 1.0
            alphaValue.1.toggle()
            alphaValue.2.toggle()
        case (false, false, true):
            greenColorTrafficLight.alpha = 0.3
            redColorTrafficLight.alpha = 1.0
            alphaValue.0.toggle()
            alphaValue.2.toggle()
        default:
            break
        }
    }
}



