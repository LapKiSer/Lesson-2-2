//
//  ViewController.swift
//  Lesson 2-2
//
//  Created by Кирилл Лапковский on 17.03.2023.
//

import UIKit

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

    @IBAction func changeLight() {
        switchButton.setTitle("NEXT", for: .normal)
    }
    
}

