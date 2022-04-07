//
//  InitialViewController.swift
//  LAB_4
//
//  Created by Shako Davitahvili on 30.03.2022.
//

import Foundation
import UIKit

final class InitialViewController: UIViewController{
    private lazy var tableViewController: UITableView = {
        UITableView(frame: CGRect.zero, style: .grouped)
    }()
    
    private enum CellsDisplayData: String, CaseIterable{
        case lab3 = "Лабораторная работа №3"
        case lab4 = "Лабораторная работа №4"
    }
     
     override func viewDidLoad() {
         super.viewDidLoad()
         setupTableView()
     }
    
    private func setupTableView(){
        view.addSubview(tableViewController)
        title = "Список лабораторных работ"
        view.backgroundColor = .lightGray
        setupTableViewConstrains()
        tableViewController.delegate = self
        tableViewController.dataSource = self
        tableViewController.tableHeaderView = UIView(frame: CGRect(x: 0,
                                                               y: 0,
                                                               width: tableViewController.frame.width,
                                                               height: CGFloat.leastNormalMagnitude))
    }
    
    private func registerCell(){
        tableViewController.register(InitialViewController.self, forCellReuseIdentifier: "InitialViewController")
    }
    
    
    
    private func setupTableViewConstrains(){
        tableViewController.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableViewController.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableViewController.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableViewController.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableViewController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }

}

extension InitialViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let viewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "Lab3StoryBoard")
            navigationController?.pushViewController(viewController, animated: true)
        } else if indexPath.row == 1 {
            let viewController = LAB_4_viewController()
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
extension InitialViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CellsDisplayData.allCases.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = InitialViewControllerCell(style: .default, reuseIdentifier: "InitialViewControllerCell")
        cell.configure(text: CellsDisplayData.allCases[indexPath.row].rawValue)
        return cell
    }
}
