//
//  InitialViewControllerCell.swift
//  LABS
//
//  Created by Shako Davitahvili on 04.04.2022.
//

import Foundation
import UIKit

final class InitialViewControllerCell: UITableViewCell{
    
    private let nameLabel = UILabel()
    
    required init?(code aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = ""
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.frame = CGRect( x: 5,
                                 y: 5,
                                 width: frame.width - 10,
                                 height: frame.height - 10)
    }
    
    private func setupViews(){
        addSubview(nameLabel)
        nameLabel.backgroundColor = .black
    }
    
    func configure(text: String){
        nameLabel.text = text
        nameLabel.textColor = .white
    }
    
}
