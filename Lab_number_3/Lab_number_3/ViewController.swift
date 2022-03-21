//
//  ViewController.swift
//  Lab_number_3
//
//  Created by Shako Davitahvili on 14.03.2022.
//

import UIKit

class ViewController:
    
    UIViewController {
    
    @IBOutlet private weak var TableViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lab3Title()
    }
    
    @IBAction func tapAction(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    private func Lab3Title() {
        title = "Lab3"
    }
}
