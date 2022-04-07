////
////  ProgrammaticallyTableView.swift
////  LABS
////
////  Created by Shako Davitahvili on 06.04.2022.
////
//
//import Foundation
//import UIKit
//
//final class ProgrammaticallyViewController: UIViewController{
//
//    private lazy var programmaticallyTableView: UITableView = {
//        UITableView(frame: CGRect.zero, style: .grouped)
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupTableView()
//    }
//
//    private func setupTableView(){
//        view.addSubview(programmaticallyTableView)
//        view.backgroundColor = .red
//        setupTableViewConstrains()
//        programmaticallyTableView.delegate = self
//        programmaticallyTableView.dataSource = self
//        programmaticallyTableView.backgroundColor = .green
//
//    }
//
//    private func setupTableViewConstrains(){
//        programmaticallyTableView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            programmaticallyTableView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            programmaticallyTableView.rightAnchor.constraint(equalTo: view.rightAnchor),
//            programmaticallyTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            programmaticallyTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//        ])
//    }
//
//}
//
//extension ProgrammaticallyViewController: UITableViewDelegate{
//
//}
//
//extension ProgrammaticallyViewController: UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        UITableViewCell()
//    }
//
//
//}
