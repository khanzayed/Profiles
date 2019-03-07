//
//  ProfileView.swift
//  BTExplore
//
//  Created by Faraz on 06/03/19.
//  Copyright © 2019 Faraz. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet var profileView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)
        addSubview(profileView)
        profileView.frame = self.bounds
        profileView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    internal func setupCollectionView() {
        let cellNib = UINib(nibName: "ProfileCollectionViewCell", bundle: nil)        
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "ProfileCollectionViewCell")
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }

}

extension ProfileView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfileCollectionViewCell
        cell.backgroundColor = (indexPath.row % 2) == 0 ? UIColor.red : UIColor.green
//        cell.configure()
        
        return cell
    }
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.bounds.size
    }
}
