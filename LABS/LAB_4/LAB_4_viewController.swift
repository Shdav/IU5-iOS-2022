//
//  LAB_4_viewController.swift
//  LABS
//
//  Created by Shako Davitahvili on 04.04.2022.
//

import Foundation
import UIKit

final class LAB_4_viewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let button = UIButton(frame: CGRect(  x: 110,
                                            y: 430,
                                            width: 200,
                                            height: 60))
        button.setTitle("TableView",for: .normal)
        button.setTitleColor(.white,for: .normal)
        button.backgroundColor = .systemBlue
            
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            
        self.view.addSubview(button)
            
        }

    @objc
    func buttonAction() {
        let viewController = ProgrammaticallyViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
