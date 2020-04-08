//
//  ReuseIdentifier.swift
//  Podcast
//
//  Created by Amit Shukla on 14/01/20.
//  Copyright © 2020 smartData Enterprises (I) Ltd. All rights reserved.
//
import Foundation
import UIKit

protocol ReuseIdentifier {
  static var reuseIdentifier: String { get }
}

extension ReuseIdentifier {
  
  /// Return a suggested name that can be used as an cellIdentifier.
  static var reuseIdentifier: String {
    return String(describing: self)
  }
  
}

extension UIView: ReuseIdentifier {}

