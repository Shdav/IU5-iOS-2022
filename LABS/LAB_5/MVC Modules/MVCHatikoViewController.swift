//
//  MVCHatikoViewController.swift
//  LABS
//
//  Created by Shako Davitahvili on 24.04.2022.
//

import Foundation
import UIKit

class HatikoViewController: UIViewController {
    
    private enum Constraints{
        static let squareSize: CGFloat = 325
        static let buttonYAnchor: CGFloat = 16
    }
    
    private let HatikoImage = UIImageView(frame: .zero)
    private let MVPModuleButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHatikoImage()
        setupMBVPModuleButton()
    }
    
    private func setupHatikoImage() {
        view.addSubview(HatikoImage)
        
        HatikoImage.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints ([
            HatikoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            HatikoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            HatikoImage.heightAnchor.constraint(equalToConstant: Constraints.squareSize),
            HatikoImage.widthAnchor.constraint(equalToConstant: Constraints.squareSize)
        ])
        HatikoImage.image = UIImage(named: "hatiko")
    }
    
    private func setupMBVPModuleButton() {
        view.addSubview(MVPModuleButton)
        MVPModuleButton.setTitle("Press this text the next step", for: .normal)
        MVPModuleButton.setTitleColor(.black, for: .normal)
        
        MVPModuleButton.translatesAutoresizingMaskIntoConstraints =  false
        view.addConstraints([
            MVPModuleButton.topAnchor.constraint(equalTo: HatikoImage.bottomAnchor, constant: Constraints.buttonYAnchor),
            MVPModuleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        MVPModuleButton.addTarget(self, action: #selector(openMVPModule), for: .touchUpInside)
        
    }
    @objc
    func openMVPModule() {
        let builder = TableModuleBuilder()
        let viewController = builder.build()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
