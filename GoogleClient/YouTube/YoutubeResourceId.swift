//
//  YoutubeResourceId.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 5/16/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The ResourceId model type for use with the Youtube API
open class YoutubeResourceId: ObjectType {
	/// The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel.
	open var channelId: String!
	/// The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video.
	open var videoId: String!
	/// The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist.
	open var playlistId: String!
	/// The type of the API resource.
	open var kind: String!
	
	public required init?(map: Map) {

	}

	public init() {

	}

	open func mapping(map: Map) {
		channelId <- map["channelId"]
		videoId <- map["videoId"]
		playlistId <- map["playlistId"]
		kind <- map["kind"]
	}
}

