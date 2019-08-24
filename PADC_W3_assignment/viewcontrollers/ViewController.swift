//
//  ViewController.swift
//  PADC_W3_assignment
//
//  Created by SC414 on 8/24/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbvSearchList: UITableView!
    
    var news: [NewsVO] = NewsVO.getNewsLists()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tbvSearchList.delegate = self
        tbvSearchList.dataSource = self
        
        let customSearchNib = UINib(nibName: String(describing: VideoTableViewCell.self), bundle: nil)
        tbvSearchList.register(customSearchNib, forCellReuseIdentifier: String(describing: VideoTableViewCell.self))
        tbvSearchList.separatorColor = UIColor.black
        
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: VideoTableViewCell.self), for: indexPath) as! VideoTableViewCell
        cell.mData = news[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateSearchDetailsView(news: news[indexPath.row])
    }
}

