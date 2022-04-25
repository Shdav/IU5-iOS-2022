//
//  TableViewController.swift
//  LABS
//
//  Created by Shako Davitahvili on 24.04.2022.
//

import Foundation
import UIKit

class MVPTableViewController: UIViewController{
    
    private enum Constraints{
        static let squareSize: CGFloat = 40
    }
    
    private lazy var MVPTableView: UITableView = {
        UITableView(frame: CGRect.zero, style: .grouped)
    }()
    
    var output: TableViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        view.addSubview(MVPTableView)
        setupTableViewConstrains()
        MVPTableView.delegate = self
        MVPTableView.dataSource = self
        MVPTableView.tableHeaderView = UIView(frame: CGRect(x: 0,
                                                         y: 0,
                                                         width: MVPTableView.frame.width,
                                                         height: CGFloat.leastNormalMagnitude))
    }
    
    private func setupTableViewConstrains(){
        MVPTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            MVPTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            MVPTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            MVPTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            MVPTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
}

extension MVPTableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        thirdViewIndex = indexPath.row
        let viewController = MVCLastViewController()
        navigationController?.pushViewController(viewController, animated: true)
        output.userDidTapTableCell()
    }
    
}

extension MVPTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "MVPTableViewController")
        
        if(indexPath.row == 0){
            cell.textLabel?.text = "switchTitleLabel"
            cell.detailTextLabel?.text = "switchSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "switch.2")
        }
        if(indexPath.row == 1){
            cell.textLabel?.text = "sliderTitleLabel"
            cell.detailTextLabel?.text = "sliderSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "slider.horizontal.3")
        }
        if(indexPath.row == 2){
            cell.textLabel?.text = "textFieldTitleLabel"
            cell.detailTextLabel?.text = "textFieldSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "person.badge.plus")
            
        }
        if(indexPath.row == 3){
            cell.textLabel?.text = "segmentedPickerTitleLabel"
            cell.detailTextLabel?.text = "segmentedPickerSubtitleLabel"
            cell.detailTextLabel?.textColor = UIColor.gray
            cell.imageView?.image = UIImage(systemName: "rectangle.compress.vertical")
        }
        return cell
    }
}

extension MVPTableViewController: TableViewInput{
}


