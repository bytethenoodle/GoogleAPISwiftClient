//
//  YoutubeLiveBroadcastContentDetails.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 7/11/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The projection format of this broadcast. This defaults to rectangular.
public enum YoutubeLiveBroadcastContentDetailsProjection: String {
	/// 
	case X360 = "360"
	/// 
	case Rectangular = "rectangular"
}

/// 
public enum YoutubeLiveBroadcastContentDetailsClosedCaptionsType: String {
	/// 
	case ClosedCaptionsDisabled = "closedCaptionsDisabled"
	/// 
	case ClosedCaptionsEmbedded = "closedCaptionsEmbedded"
	/// 
	case ClosedCaptionsHttpPost = "closedCaptionsHttpPost"
}

/// Detailed settings of a broadcast.
public class YoutubeLiveBroadcastContentDetails: ObjectType {
	/// The date and time that the live stream referenced by boundStreamId was last updated.
	public var boundStreamLastUpdateTimeMs: NSDate!
	/// This setting indicates whether YouTube should enable content encryption for the broadcast.
	public var enableContentEncryption: Bool!
	/// Indicates whether this broadcast has low latency enabled.
	public var enableLowLatency: Bool!
	/// The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly.
	public var monitorStream: YoutubeMonitorStreamInfo!
	/// This value uniquely identifies the live stream bound to the broadcast.
	public var boundStreamId: String!
	public var closedCaptionsType: YoutubeLiveBroadcastContentDetailsClosedCaptionsType!
	/**
	Automatically start recording after the event goes live. The default value for this property is true.
	
	
	
	Important: You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback.*/
	public var recordFromStart: Bool!
	/// This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.
	public var enableClosedCaptions: Bool!
	/// This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video.
	public var enableEmbed: Bool!
	/**
	This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true.
	
	
	
	Important: You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends.*/
	public var enableDvr: Bool!
	/// This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers.
	public var startWithSlate: Bool!
	/// The projection format of this broadcast. This defaults to rectangular.
	public var projection: YoutubeLiveBroadcastContentDetailsProjection!
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(map: Map) {
		boundStreamLastUpdateTimeMs <- (map["boundStreamLastUpdateTimeMs"], RFC3339Transform())
		enableContentEncryption <- map["enableContentEncryption"]
		enableLowLatency <- map["enableLowLatency"]
		monitorStream <- map["monitorStream"]
		boundStreamId <- map["boundStreamId"]
		closedCaptionsType <- map["closedCaptionsType"]
		recordFromStart <- map["recordFromStart"]
		enableClosedCaptions <- map["enableClosedCaptions"]
		enableEmbed <- map["enableEmbed"]
		enableDvr <- map["enableDvr"]
		startWithSlate <- map["startWithSlate"]
		projection <- map["projection"]
	}
}

