//
//  ViewController.swift
//  F-app
//
//  Created by Hoang Truong on 2/10/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import UIKit
import Firebase

class UploadDesignVC: UIViewController {
    
    var itemsCollection: [ItemsUpload] = []
    
    @IBOutlet weak var BtnItem1: UIButton!
    @IBOutlet weak var BtnItem2: UIButton!
    @IBOutlet weak var BtnItem3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func BtnItem1Pressed(_ sender: UIButton) {
    }
    
    
    @IBAction func BtnItem2Pressed(_ sender: UIButton) {
    }
    

    @IBAction func BtnItem3Pressed(_ sender: UIButton) {
    }
    
    
    @IBAction func BtnUploadDesignPressed(_ sender: UIButton) {
//        if let items1 = BtnItem1.backgroundImage(for: ,
//            let uploader = Auth.auth().currentUser?.email // get data from current User that have singe in
//             {
//              db.collection(K.FStore.collectionName).addDocument(data: [
//                  K.FStore.senderField: messageSender, // add data of the sender user, the email in this case
//                  K.FStore.bodyField: messageBody, // add data of body message
//                  K.FStore.dateField: Date().timeIntervalSince1970 // add data of DAte
//              ]) { (error) in
//                  if let e = error {
//                      print("There was an issue saving data to firestore, \(e)")
//                  } else {
//                      print("Successfully saved data")
//
//                      DispatchQueue.main.async {
//                          self.messageTextfield.text = ""
//                      } // set the text field to blank after finishing the message
//
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
