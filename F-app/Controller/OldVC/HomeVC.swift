//
//  ViewController.swift
//  F-app
//
//  Created by Hoang Truong on 1/16/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import UIKit
import Firebase

class HomeVC: UIViewController
//UICollectionViewDataSource,UICollectionViewDelegate
{
    
    var postFeeds: [DesignPost] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    //read data from cloud
    func loadDesigns() {
          
          
          //Order data
           // set the array to empty to clear dummay array
         // db.collection(K.FStore.collectionName)
//              .order(by: K.FStore.dateField)
//              .addSnapshotListener { (querySnapshot, error) in
//
//              self.messages = [] // clear out all exsiting data to avoid duplication when retriving the data from the database
//
//              if let e  = error {
//                  print ("There was an issue retrieving  data from Firestore, \(e)")
//              } else {
//                  if let snapShotDocuments = querySnapshot?.documents {
//                      for doc in snapShotDocuments {
//                          // loop through all the data in the document
//
//                          let data = doc.data()// print out the data in the document
//
//                          // down cast the optional String
//                          if let messageSender = data[K.FStore.senderField] as? String, let messageBody = data[K.FStore.bodyField] as? String {
//                              let newMessage = Message(sender: messageSender, body: messageBody) // set the new message
//                              self.messages.append(newMessage) // add new messages into the array
//
//                              DispatchQueue.main.async {
//                                  self.tableView.reloadData() // tap into tablevIew, and trigger Datasource again
//
//
//                                  //Scroll to the last item in the table view
//                                  let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
//                                  self.tableView.scrollToRow(at: indexPath, at: .top, animated: false)
//
//
//
//                              } // fetch the data in the background
//
//                          }
//
//                      }
//                  }
//              }
//          }
      }
    
    // MARK:- Collection View delegate method
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//    }
//
//
//
//    // MARK:- UI Collection Datasource protocol
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return postFeeds.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let post = postFeeds[indexPath.row]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "designPostCell", for: indexPath) as! DesignerPostCell
//        cell.userName = postFeeds
//
//        return cell
//    }
    

}

