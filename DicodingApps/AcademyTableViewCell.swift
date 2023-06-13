//
//  AcademyTableViewCell.swift
//  DicodingApps
//
//  Created by Cahyo on 12/06/23.
//

import UIKit

class AcademyTableViewCell: UITableViewCell {

    @IBOutlet weak var academyImageView: UIImageView!
    @IBOutlet weak var academyLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
