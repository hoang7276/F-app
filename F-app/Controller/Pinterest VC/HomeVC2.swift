//
//  HomeVC2.swift
//  F-app
//
//  Created by Hoang Truong on 2/17/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import UIKit
class HomeVC2: UIViewController{
      
          @IBOutlet var collectionView: UICollectionView!
    
          lazy var cellSizes: [CGSize] = {
              var cellSizes = [CGSize]()
              
              for _ in 0...100 {
                  let random = Int(arc4random_uniform((UInt32(100))))
                  
                  cellSizes.append(CGSize(width: 140, height: 50 + random))
              }
              
              return cellSizes
          }()
          
          override func viewDidLoad() {
            collectionView.backgroundColor = .red
              super.viewDidLoad()
              
              let layout = CollectionViewWaterfallLayout()
              layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
              layout.headerInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
              layout.headerHeight = 50
              layout.footerHeight = 20
              layout.minimumColumnSpacing = 10
              layout.minimumInteritemSpacing = 10
              
              collectionView.collectionViewLayout = layout
          }
      }

      // MARK: - UICollectionViewDataSource
      extension HomeVC2: UICollectionViewDataSource {
          func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
              return 1
          }
          
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
              return cellSizes.count
          }
          
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellStory", for: indexPath) as! StoryCellonCollectionView
              
              cell.label.text = String(indexPath.row)
              
              return cell
          }
          
          func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
              let reusableView: UICollectionReusableView?
              
              switch kind {
              case CollectionViewWaterfallElementKindSectionHeader:
                  let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath)
                  header.backgroundColor = .red
                  reusableView = header
              case CollectionViewWaterfallElementKindSectionFooter:
                  let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Footer", for: indexPath)
                  footer.backgroundColor = .blue
                  reusableView = footer
              default:
                  reusableView = nil
              }
              
              return reusableView!
          }
      }


      // MARK: - CollectionViewWaterfallLayoutDelegate
      extension HomeVC2: CollectionViewWaterfallLayoutDelegate {
          func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
              return cellSizes[indexPath.item]
          }
      }
