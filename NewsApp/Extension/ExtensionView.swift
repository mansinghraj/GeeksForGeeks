//
//  ExtensionView.swift
//  NewsApp
//
//  Created by Vivek Gaurav Singh on 10/08/21.
//

import Foundation
import UIKit
@IBDesignable
final class SegmentView: UIView {
    // MARK: - Properties
    @IBInspectable
    var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
