//
//  CustomNewsCell.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import UIKit
import AVFoundation
import Foundation
class CustomNewsCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
       //
    }
//    override func layoutSubviews() {
//        super.layoutSubviews()
//       // imageView?.custionTopRightAndBottomRightCorner()
//        //imageView?.roundImageCorners([.topRight, .bottomRight], radius: 20)
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
