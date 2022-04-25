//
//  TableViewIO.swift
//  LABS
//
//  Created by Shako Davitahvili on 24.04.2022.
//

import Foundation

protocol TableViewInput: AnyObject{
    
}

protocol TableViewOutput: AnyObject{
    func userDidTapTableCell()
}
