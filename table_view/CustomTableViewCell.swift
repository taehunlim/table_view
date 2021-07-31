//
//  CustomTableViewCell.swift
//  table_view
//
//  Created by 임태훈 on 2021/07/31.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

  
    @IBOutlet weak var cellImg: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
