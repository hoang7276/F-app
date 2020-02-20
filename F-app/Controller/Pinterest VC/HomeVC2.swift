//
//  HomeVC2.swift
//  F-app
//
//  Created by Hoang Truong on 2/17/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import UIKit
class HomeVC2: UIViewController{
      
    // MARK:- Outlets
    @IBOutlet var collectionView: UICollectionView!
    
// MARK:- Properties
    var images = [#imageLiteral(resourceName: "image-0.jpeg"), #imageLiteral(resourceName: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__02469.1537167876"),#imageLiteral(resourceName: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__02469.1537167876"), #imageLiteral(resourceName: "image-0"),#imageLiteral(resourceName: "image-2.jpeg"), #imageLiteral(resourceName: "image-4"), #imageLiteral(resourceName: "2018-Fashion-New-Male-Shirt-Long-Sleeve-Mens-Clothes-Oblique-Button-Dress-Shirts-Mandarin-Collar-Men__02469.1537167876")]
    

          
    override func viewDidLoad() {
            super.viewDidLoad()
        if let layout = collectionView.collectionViewLayout as? PinterestLayout{
            layout.delegate = self
        }
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
          }
}
// MARK:- Flow Layour Delegate

extension HomeVC2: PinterestLayoutDelegate {
    
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let image = images[indexPath.item]
        let height = image.size.height
        return height
    }
    
}

// MARK:- DataSource
extension HomeVC2: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! DesignerPostCell
        let image = images[indexPath.item]
        cell.ImageView.image = image
        
        return cell
    }
}
// MARK:- Delegate flow layout
extension HomeVC2: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let itemSize = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
       return CGSize(width: itemSize, height: itemSize)
     }
}
    
