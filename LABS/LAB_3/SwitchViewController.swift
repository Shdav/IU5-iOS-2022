//
//  SwitchViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 24.03.2022.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func switchAction(_ sender: UISwitch) {
        if(sender.isOn == true){
            switchLabel.text = "Yes, I want"
        }
        else{
            switchLabel.text = "No, thanks"
        }
    }
    

}
