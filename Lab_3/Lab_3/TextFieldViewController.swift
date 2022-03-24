//
//  TextFieldViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 24.03.2022.
//

import UIKit


class TextFieldViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    func createDatePicker(){
        textField.textAlignment = .center
        let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: CGSize(width: view.bounds.width, height: 44.0)))
        toolbar.sizeToFit()
        let chooseButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(choosePressed))
        toolbar.setItems([chooseButton], animated: true)
        textField.inputAccessoryView = toolbar
        textField.inputView = datePicker
        datePicker.datePickerMode = .date
    }
    
    @objc func choosePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        textField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }

}
