//
//  RSSFeed.swift
//  Podcast
//
//  Created by Amit Shukla on 14/01/20.
//  Copyright © 2020 smartData Enterprises (I) Ltd. All rights reserved.
//

import Foundation
import FeedKit

extension RSSFeed {
  
  func toEpisodes() -> [Episode] {
    let imageUrl = iTunes?.iTunesImage?.attributes?.href
    
    var episodes: [Episode] = []
    items?.forEach({ (feedItem) in
      var episode = Episode(feedItem: feedItem)
      
      if episode.imageUrl == nil {
        episode.imageUrl = imageUrl
      }
      
      episodes.append(episode)
    })
    return episodes
  }
  
}
