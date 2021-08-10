//
//  ExtensionString.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 09/08/21.
//

import Foundation
import UIKit
extension String{
    func trimeSpecialCharacter()->String{
        return self.replacingOccurrences(of: ";", with: "&")
    }
    
    func getDate()->String{
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy/dd/MM HH:mm:ss"
        let showDate = inputFormatter.date(from: self)
        inputFormatter.dateFormat = "MMM dd, yyyy hh:mm a"
        let resultString = inputFormatter.string(from: showDate!)
          return resultString
    }
    
    
}
