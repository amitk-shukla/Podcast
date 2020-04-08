//
//  EpisodeTableViewCell.swift
//  Podcast
//
//  Created by Amit Shukla on 14/01/20.
//  Copyright © 2020 smartData Enterprises (I) Ltd. All rights reserved.
//

import UIKit
import Kingfisher

class EpisodeTableViewCell: UITableViewCell {

  var episode: Episode! {
    didSet {
      titleLabel.text = episode.title
      descriptionLabel.text = episode.description
      
      let dateFormatter = DateFormatter()
      dateFormatter.dateStyle = .medium
      pubDateLabel.text = dateFormatter.string(from: episode.pubDate)
      
      let secureImageUrl = URL(string: episode.imageUrl ?? "")
      episodeImageView.kf.setImage(with: secureImageUrl)
    }
  }
  
  //MARK:- IB Actions and Outlets
  
  @IBOutlet weak var titleLabel: UILabel! {
    didSet {
      titleLabel.numberOfLines = 2
    }
  }
  @IBOutlet weak var descriptionLabel: UILabel! {
    didSet {
      descriptionLabel.numberOfLines = 2
    }
  }
  @IBOutlet weak var progressLabel: UILabel!
  @IBOutlet weak var episodeImageView: UIImageView!
  @IBOutlet weak var pubDateLabel: UILabel!

}
