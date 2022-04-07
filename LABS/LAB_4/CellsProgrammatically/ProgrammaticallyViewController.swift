//
//  ProgrammaticallyViewController.swift
//  LABS
//
//  Created by Shako Davitahvili on 05.04.2022.
//

import Foundation
import UIKit

final class ProgrammaticallyViewController: UIViewController{
    private lazy var ProgrammaticallyTableView: UITableView = {
        UITableView(frame: CGRect.zero, style: .grouped)
    }()
    
//    private enum CellsDisplayData: String, CaseIterable{
//        case lab3 = "Лабораторная работа №3"
//        case lab4 = "Лабораторная работа №4"
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        view.addSubview(ProgrammaticallyTableView)
        setupTableViewConstrains()
        ProgrammaticallyTableView.delegate = self
        ProgrammaticallyTableView.dataSource = self
        ProgrammaticallyTableView.tableHeaderView = UIView(frame: CGRect(x: 0,
                                                                     y: 0,
                                                                     width: ProgrammaticallyTableView.frame.width,
                                                                     height: CGFloat.leastNormalMagnitude))
    }
    
    
//    private func registerCell(){
//        ProgrammaticallyTableView.register(ProgrammaticallyViewController.self, forCellReuseIdentifier: "ProgrammaticallyViewController")
//   }
    
    private func setupTableViewConstrains(){
        ProgrammaticallyTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ProgrammaticallyTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            ProgrammaticallyTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            ProgrammaticallyTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ProgrammaticallyTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
}

extension ProgrammaticallyViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = ThirdViewController()
        thirdViewIndex = indexPath.row
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

extension ProgrammaticallyViewController: UITableViewDataSource{
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
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "ProgrammaticallyViewController")
        
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
