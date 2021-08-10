//
//  AppConstant.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import Foundation
struct AppConstant {
   static func baseUrl()->String{
        return "https://api.rss2json.com/v1/"
    }
    enum apiRequestPath {
        static let newsApp = "api.json?rss_url=http://www.abc.net.au/news/feed/51120/rss.xml"
    }
}

