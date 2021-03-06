//
//  BloggerPageList.swift
//  GoogleAPISwiftClient
//
//  Created by Matthew Wyskiel on 7/11/16.
//  Copyright © 2016 Matthew Wyskiel. All rights reserved.
//

import Foundation
import ObjectMapper

/// The PageList model type for use with the Blogger API
public class BloggerPageList: GoogleObjectList {
	/// Pagination token to fetch the next page, if one exists.
	public var nextPageToken: String!
	/// Etag of the response.
	public var etag: String!
	/// The list of Pages for a Blog.
	public var items: [BloggerPage]!
	/// The kind of this entity. Always blogger#pageList
	public var kind: String = "blogger#pageList"
	
	public required init?(_ map: Map) {

	}

	public init() {

	}

	public func mapping(map: Map) {
		nextPageToken <- map["nextPageToken"]
		etag <- map["etag"]
		items <- map["items"]
		kind <- map["kind"]
	}
	public required init(arrayLiteral elements: BloggerPage...) {
		items = elements
	}

	public typealias Generator = IndexingGenerator<[BloggerPage]>

	public func generate() -> Generator {
		let objects = items as [BloggerPage]
		return objects.generate()
	}

	public subscript(position: Int) -> BloggerPage {
		return items[position]
	}
}

