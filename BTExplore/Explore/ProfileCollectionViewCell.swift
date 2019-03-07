//
//  ProfileCollectionViewCell.swift
//  BTExplore
//
//  Created by Faraz on 07/03/19.
//  Copyright © 2019 Faraz. All rights reserved.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let cellNib = UINib(nibName: "ProfileTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "ProfileTableViewCell")
        
        self.tableView.dataSource = self
    }

}

extension ProfileCollectionViewCell: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell") as! ProfileTableViewCell
        cell.backgroundColor = (indexPath.row % 2) == 0 ? UIColor.red : UIColor.green
        return cell
    }
    
}
