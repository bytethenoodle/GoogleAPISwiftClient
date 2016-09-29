//
//  YoutubePromotedItemId.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 5/16/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The PromotedItemId model type for use with the Youtube API
open class YoutubePromotedItemId: ObjectType {
	/// If the promoted item represents a video, this field represents the unique YouTube ID identifying it. This field will be present only if type has the value video.
	open var videoId: String!
	/// If type is recentUpload, this field identifies the channel from which to take the recent upload. If missing, the channel is assumed to be the same channel for which the invideoPromotion is set.
	open var recentlyUploadedBy: String!
	/// If the promoted item represents a website, this field represents the url pointing to the website. This field will be present only if type has the value website.
	open var websiteUrl: String!
	/// Describes the type of the promoted item.
	open var type: YoutubePromotedItemIdType!
	
	public required init?(map: Map) {

	}

	public init() {

	}

	open func mapping(map: Map) {
		videoId <- map["videoId"]
		recentlyUploadedBy <- map["recentlyUploadedBy"]
		websiteUrl <- map["websiteUrl"]
		type <- map["type"]
	}
}

/// Describes the type of the promoted item.
public enum YoutubePromotedItemIdType: String {
	/// 
	case RecentUpload = "recentUpload"
	/// 
	case Video = "video"
	/// 
	case Website = "website"
}

