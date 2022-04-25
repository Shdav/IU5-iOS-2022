//
//  TablePresenter.swift
//  LABS
//
//  Created by Shako Davitahvili on 24.04.2022.
//

import Foundation

final class TablePresenter{
    
    weak var view: TableViewInput!
    
}

extension TablePresenter: TableViewOutput{
    func userDidTapTableCell() {
        print(String(thirdViewIndex) + " tapped")
    }
}
