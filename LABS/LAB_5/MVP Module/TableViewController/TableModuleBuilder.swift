//
//  TableModuleBuilder.swift
//  LABS
//
//  Created by Shako Davitahvili on 24.04.2022.
//

import Foundation
import UIKit

final class TableModuleBuilder{
    func build() -> UIViewController{
        let viewController = MVPTableViewController()
        let presenter = TablePresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        
        return viewController
    }
}
