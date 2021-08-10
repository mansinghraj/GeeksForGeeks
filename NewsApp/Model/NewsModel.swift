//
//  NewsModel.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import Foundation
struct NewsResponse:Codable {
    var feed:FeedData? = nil
    var items:[NewsItem]? = nil
}
struct FeedData:Codable{
    let author: String?
    let description:String?
    let image:String?
    let link:String?
    let title:String?
    let url:String?
    enum CodingKeys: String, CodingKey{
        case author = "author"
        case description = "description"
        case image = "image"
        case link = "link"
        case title = "title"
        case url = "url"
    }
}
struct NewsItem:Codable{
    let author: String?
    let pubDate: String?
    let thumbnail:String?
    let title:String?
    enum CodingKeys: String, CodingKey{
        case author = "author"
        case pubDate = "pubDate"
        case thumbnail = "thumbnail"
        case title = "title"
    }
}
