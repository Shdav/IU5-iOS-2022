//
//  ViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 22.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LabTitle()
    }

    @IBAction func tapAction(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secondViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func LabTitle() {
        title = "Lab3"
    }
}

