//
//  FirstCell.swift
//  Lab_number_3
//
//  Created by Shako Davitahvili on 21.03.2022.
//

import UIKit

class FirstCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var SubtitleLabel: UILabel!
    @IBOutlet weak var SwitchImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /*func setupTitle(TitleLabel: String, SubtitleLabel: String, SwitchImage: UIImage){
        TitleLabel.text = String
        SubtitleLabel.text = String
        SwitchImage = I
    }*/
    
}
