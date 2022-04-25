////
////  ProgrammaticallyCell.swift
////  LABS
////
////  Created by Shako Davitahvili on 05.04.2022.
////
//
//import Foundation
//import UIKit
//
//final class ProgrammaticallyCell: UITableViewCell{
//    private let titleLabel = UILabel()
//    private let subtitleLabel = UILabel()
//
//    required init?(code aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setupViews()
//    }
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setupViews()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        titleLabel.text = ""
//        subtitleLabel.text = ""
//    }
//
//    private func setupViews(){
//        addSubview(titleLabel)
//        addSubview(subtitleLabel)
//    }
//
//    func configure(title: String, subtitle: String){
//        titleLabel.text = title
//        titleLabel.textColor = .white
//        subtitleLabel.text = subtitle
//        subtitleLabel.textColor = .lightGray
//    }
//}
