//
//  YoutubeVideoAgeGating.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/18/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class YoutubeVideoAgeGating: Mappable {
	/// Video game rating, if any.
	public var videoGameRating: YoutubeVideoAgeGatingVideoGameRating!
	/// Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present.
	public var restricted: Bool!
	/// Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content.
	public var alcoholContent: Bool!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		videoGameRating <- map["videoGameRating"]
		restricted <- map["restricted"]
		alcoholContent <- map["alcoholContent"]
	}
}
