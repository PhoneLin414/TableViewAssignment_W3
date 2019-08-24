//
//  DetailViewController.swift
//  PADC_W3_assignment
//
//  Created by SC414 on 8/24/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSpeakerName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblProfilenAME: UILabel!
    @IBOutlet weak var lblProfilePos: UILabel!
    @IBOutlet weak var lblProfileDec: UILabel!
    @IBOutlet weak var lblProfileDate: UILabel!
    
    
    
    var news: NewsVO!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollview.isScrollEnabled = true
        
        imgProfile.layer.cornerRadius = imgProfile.frame.width / 2
        imgDetail.image = news.describeImg
        lblTitle.text = news.description
        lblSpeakerName.text = news.name
        lblDescription.text = news.descriptionDetails
        imgProfile.image = news.profileImg
        lblProfilenAME.text = news.name
        lblProfilePos.text = news.position
        lblProfileDec.text = news.bioGraphy
        lblProfileDate.text = news.describeEvent + " l " + news.submitDate

        
    }
    

}
