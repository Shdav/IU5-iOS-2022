//
//  SecondViewController.swift
//  Lab_3
//
//  Created by Shako Davitahvili on 22.03.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    

    

}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "secondViewController")
        
        if(indexPath.section == 0){
            cell.textLabel?.text = "switchTitleLabel"
            cell.detailTextLabel?.text = "switchSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "switch.2")
        }
        if(indexPath.section == 1){
            cell.textLabel?.text = "sliderTitleLabel"
            cell.detailTextLabel?.text = "sliderSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "slider.horizontal.3")
        }
        if(indexPath.section == 2){
            cell.textLabel?.text = "textFieldTitleLabel"
            cell.detailTextLabel?.text = "textFieldSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "person.badge.plus")
        }
        if(indexPath.section == 3){
            cell.textLabel?.text = "segmentedPickerTitleLabel"
            cell.detailTextLabel?.text = "segmentedPickerSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "rectangle.compress.vertical")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
}

extension SecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thirdViewControllerTypeKey: [Int: String?] = [0: "switchViewController", 1: "sliderViewController", 2: "textFieldViewController", 3: "segmentedPickerViewController" ]
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: thirdViewControllerTypeKey[indexPath.section]!!)
        navigationController?.pushViewController(viewController, animated: true)    }
    
    
}

