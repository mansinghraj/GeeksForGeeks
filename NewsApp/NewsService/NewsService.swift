//
//  NewsService.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import Foundation
import UIKit
import Alamofire
class NewsSevice {
    static func getNewsListApi(onComplete: @escaping (NewsResponse)-> Void,onError: @escaping(String)-> Void){
        let urlString = AppConstant.baseUrl() + AppConstant.apiRequestPath.newsApp
        let headers: HTTPHeaders? = nil
        AF.request(URL.init(string: urlString)!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
            print(response.result)
            switch response.result {
            case .success(_):
                
                if let json = response.value
                {
                    print("categories list==\(json)")
                    do {
                        let newsResponse = try JSONDecoder().decode(NewsResponse.self, from: response.data!)
                        //  print(searchSlotsAppointmentDetails)
                        print("\(newsResponse.feed?.title ?? "")")
                         onComplete(newsResponse)
                    } catch{
                        //completion(true, error.localizedDescription)
                        print(error)
                        // onError(error)
                    }
                }
                break
            case .failure(let error):
                onError(error.localizedDescription)
                break
            }
        }
    }
}
