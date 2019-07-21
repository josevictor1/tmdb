//
//  GradientDirection.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 21/07/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

@objc public enum GradientDirection: Int {
    
    case horizontal = 0
    case vertical = 1
    
    var startPoint: CGPoint {
        switch self {
        case .horizontal, .vertical:
            return CGPoint(x: 0, y: 0)
        }
    }
    
    var endPoint: CGPoint {
        switch self {
        case .horizontal:
            return CGPoint(x: 1, y: 0)
        case .vertical:
            return CGPoint(x: 0, y: 1)
        }
    }
    
}
