//
//  YoutubeWatchSettings.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 12/18/15.
//  Copyright © 2015 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

public class YoutubeWatchSettings: Mappable {
	/// An ID that uniquely identifies a playlist that displays next to the video player.
	public var featuredPlaylistId: String!
	/// The background color for the video watch page's branded area.
	public var textColor: String!
	/// The text color for the video watch page's branded area.
	public var backgroundColor: String!
	
	public required init?(_ map: Map) {

	}

	public func mapping(map: Map) {
		featuredPlaylistId <- map["featuredPlaylistId"]
		textColor <- map["textColor"]
		backgroundColor <- map["backgroundColor"]
	}
}
