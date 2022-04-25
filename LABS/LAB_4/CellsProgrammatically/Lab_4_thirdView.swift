//
//  Lab_4_thirdView.swift
//  LABS
//
//  Created by Shako Davitahvili on 06.04.2022.
//

import Foundation
import UIKit

final class ThirdViewController: UIViewController, UITextFieldDelegate{
    let switchLabel = UILabel(frame: CGRect(x: 170, y: 300, width: 300, height: 60))
    let switchButton = UISwitch(frame:CGRect(x: 175, y: 375, width: 300, height: 60))
    let sliderLabel = UILabel(frame: CGRect(x: 170, y: 375, width: 300, height: 60))
    let sliderButton = UISlider(frame:CGRect(x: 55, y: 300, width: 300, height: 60))
    let textFieldLabel = UILabel(frame: CGRect(x: 125, y: 375, width: 300, height: 60))
    let textFieldButton = UITextField(frame: CGRect(x: 55, y: 300, width: 300, height: 40))

    override func viewDidLoad() {
        super.viewDidLoad()
        if thirdViewIndex == 0{
           setupSwitch(switchButton: switchButton, switchLabel: switchLabel)
        }
        if thirdViewIndex == 1{
            setupSlider(sliderButton: sliderButton, sliderLabel: sliderLabel)
        }
        if (thirdViewIndex == 2){
            setupTextField(textFieldButton: textFieldButton, textFieldLabel: textFieldLabel)
        }
        if thirdViewIndex == 3{
            setupSegmentedPicker()
        }
    }
    
    private func setupSwitch(switchButton: UISwitch, switchLabel: UILabel){
        title = "Switch"
        switchButton.isOn = false
        switchLabel.text = "Off"
        switchLabel.font = switchLabel.font.withSize(40)
        self.view.addSubview(switchLabel)
        self.view.addSubview(switchButton)
        switchButton.addTarget(self, action: #selector(lab4SWitch), for: .valueChanged)
    }
    
    private func setupSlider(sliderButton: UISlider, sliderLabel: UILabel){
        title = "Slider"
        sliderLabel.text = "0"
        sliderLabel.font = sliderLabel.font.withSize(40)
        sliderButton.minimumValue = 0.0
        sliderButton.maximumValue = 100.0
        sliderButton.isContinuous = true
        sliderButton.tintColor = UIColor.green
        sliderButton.addTarget(self, action: #selector(lab4Slider), for: .valueChanged)
        self.view.addSubview(sliderButton)
        self.view.addSubview(sliderLabel)
    }
    
    private func setupTextField(textFieldButton: UITextField, textFieldLabel: UILabel){
        title = "TextField"
        textFieldLabel.text = "Your Text"
        textFieldLabel.font = textFieldLabel.font.withSize(40)
        textFieldButton.placeholder = "Enter something"
        textFieldButton.borderStyle = UITextField.BorderStyle.line
        textFieldButton.textColor = .red
        textFieldButton.backgroundColor = .yellow
        textFieldButton.delegate = self
        self.view.addSubview(textFieldButton)
        self.view.addSubview(textFieldLabel)
    }
    
    private func setupSegmentedPicker(){
        let items =  ["white", "red", "blue"]
        let segmentedPicker = UISegmentedControl(items: items)
        segmentedPicker.addTarget(self, action: #selector(lab4SegmentedPicker(_:)), for: .valueChanged)
        segmentedPicker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(segmentedPicker)
        NSLayoutConstraint.activate([
            segmentedPicker.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            segmentedPicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            segmentedPicker.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    @objc func lab4SWitch(){
        if switchButton.isOn == true {
            switchLabel.text = "On"
        }
        else{
            switchLabel.text = "Off"
        }
    }
    
    @objc private func lab4Slider(){
        sliderLabel.text = String(sliderButton.value)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldLabel.text = textFieldButton.text
        return true
    }

    @objc private func lab4SegmentedPicker(_ segmentedPicker: UISegmentedControl){
        switch segmentedPicker.selectedSegmentIndex{
        case 0 :
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .blue
        default:
            fatalError()
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
