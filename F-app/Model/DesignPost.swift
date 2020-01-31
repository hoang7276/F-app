//
//  DesignPost.swift
//  F-app
//
//  Created by Hoang Truong on 1/28/20.
//  Copyright © 2020 Hoang Truong. All rights reserved.
//

import Foundation
import UIKit

struct DesignPost {
    let designImage: UIImage
    let userProfilePic: UIImage
    let designerUsername: String
    let postDescripton: String

    init(image: UIImage, designerPic: UIImage, username: String, description: String ) {
        designImage = image
        userProfilePic = designerPic
        designerUsername = username
        postDescripton = description
    }

}
