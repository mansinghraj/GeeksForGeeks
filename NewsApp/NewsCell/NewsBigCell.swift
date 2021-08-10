//
//  NewsBigCell.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 10/08/21.
//

import UIKit

class NewsBigCell: UITableViewCell {
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var img_big: RoundedCornerImageView!
    @IBOutlet weak var lbl_date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
