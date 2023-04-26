//
//  RowViewCell.swift
//  MyApp
//
//  Created by Mohan K on 15/11/22.
//

import UIKit

class RowViewCell: UITableViewCell {

    
    @IBOutlet weak var Future: UILabel!
    
    @IBOutlet weak var ImagePic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
