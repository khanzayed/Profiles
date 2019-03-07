//
//  ViewController.swift
//  BTExplore
//
//  Created by Faraz on 06/03/19.
//  Copyright © 2019 Faraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileView: ProfileView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileView.setupCollectionView()
    }


}

