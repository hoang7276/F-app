//
//  ViewController.swift
//  F-app
//
//  Created by Hoang Truong on 1/16/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    var postFeeds: [DesignPost] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    // MARK:- Collection View delegate method
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK:- UI Collection Datasource protocol
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postFeeds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let post = postFeeds[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "designPost", for: indexPath)
        
        
    
        return
    }
    

}

