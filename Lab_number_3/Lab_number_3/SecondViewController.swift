//
//  SecondViewController.swift
//  Lab_number_3
//
//  Created by Shako Davitahvili on 21.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        
    }
    
    private func setupTable() {
        self.TableView.delegate = self
        self.TableView.dataSource = self
        TableView.register(FirstCell.self, forCellReuseIdentifier: "firstCell")
    }
    
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "firstCell") as! FirstCell
        cell.TitleLabel.text = "SwitchTitle"
        cell.SubtitleLabel.text = "SwitchSubtitle"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        }
}
