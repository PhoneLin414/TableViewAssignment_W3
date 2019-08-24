//
//  Routers.swift
//  PADC_W3_assignment
//
//  Created by SC414 on 8/24/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func navigateSearchDetailsView(news: NewsVO){
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: STORY_BOARD_ID_SEARCH_DETAILS) as? DetailViewController
        vc?.news = news
        if let viewCtrl = vc {
            self.navigationController?.pushViewController(viewCtrl, animated: true)
        }
        
    }
}
