//
//  PodcastTableViewCell.swift
//  Podcast
//
//  Created by Amit Shukla on 14/01/20.
//  Copyright © 2020 smartData Enterprises (I) Ltd. All rights reserved.
//

import UIKit
import Kingfisher

class PodcastTableViewCell: UITableViewCell {
  
  @IBOutlet weak var podcastImageView: UIImageView!
  @IBOutlet weak var trackNameLabel: UILabel!
  @IBOutlet weak var episodeCountLabel: UILabel!
  @IBOutlet weak var artistNameLabel: UILabel!
  
  func configure(_ podcast: Podcast) {
    trackNameLabel.text = podcast.trackName
    artistNameLabel.text = podcast.artistName
    
    if let trackCount = podcast.trackCount {
      if trackCount <= 1 {
        episodeCountLabel.text = "\(trackCount) Episode"
      } else {
        episodeCountLabel.text = "\(trackCount) Episodes"
      }
    }
    
    guard let secureImageUrl = URL(string: podcast.artworkUrl600 ?? "") else { return }
    podcastImageView.kf.setImage(with: secureImageUrl)
  }
  
}

