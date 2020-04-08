//
//  UIApplication.swift
//  Podcast
//
//  Created by Amit Shukla on 14/01/20.
//  Copyright © 2020 smartData Enterprises (I) Ltd. All rights reserved.
//

import UIKit

extension UIApplication {
  
  static func mainTabBarController() -> MainTabBarController? {    
    return shared.keyWindow?.rootViewController as? MainTabBarController
  }
  
}
