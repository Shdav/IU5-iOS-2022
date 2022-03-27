//
//  SegmentedPickerViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 24.03.2022.
//

import UIKit

class SegmentedPickerViewController: UIViewController {

    @IBOutlet weak var segmentPicker: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func tapAction(_ sender: UISegmentedControl) {
        if(segmentPicker.selectedSegmentIndex == 0){
            view.backgroundColor = .black
        }
        else if(segmentPicker.selectedSegmentIndex == 1){
            view.backgroundColor = .gray
        }
        else if(segmentPicker.selectedSegmentIndex == 2){
            view.backgroundColor = .brown
        }
    }
    
    

}
