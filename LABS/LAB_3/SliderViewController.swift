//
//  SliderViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 24.03.2022.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderLabel.text = String(sender.value)
    }
}
