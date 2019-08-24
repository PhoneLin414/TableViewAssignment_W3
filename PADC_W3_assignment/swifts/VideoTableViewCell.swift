//
//  VideoTableViewCell.swift
//  PADC_W3_assignment
//
//  Created by SC414 on 8/24/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var imgNewsList: UIImageView!
    @IBOutlet weak var lblSpeaker: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var mData: NewsVO! {
        didSet {
            lblSpeaker.text = mData.name
            lblDescription.text = mData.description
            imgNewsList.image = mData.describeImg
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgNewsList.layer.cornerRadius = 5
        selectionStyle = .none

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
