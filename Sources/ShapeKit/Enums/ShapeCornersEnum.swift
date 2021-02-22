//
//  ShapeCornersEnum.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public enum ShapeCornersEnum {
    
    case master(MasterCorners)
    case couple(CoupleCorners)
    case single(SingleCorners)
    
    public enum MasterCorners {
        case none
        case all
    }
    
    public enum CoupleCorners {
        case top
        case bottom
        case right
        case left
    }
    
    public enum SingleCorners {
        case topLeft
        case topRight
        case bottomLeft
        case bottomRight
    }
    
    var rectCorner: UIRectCorner {
        switch self {
        case .master(.none):
            return []
        case .master(.all):
            return [.allCorners]
        case .couple(.top):
            return [.topLeft, .topRight]
        case .couple(.bottom):
            return [.bottomLeft, .bottomRight]
        case .couple(.right):
            return [.topRight, .bottomRight]
        case .couple(.left):
            return [.topLeft, .bottomLeft]
        case .single(.topRight):
            return [.topRight]
        case .single(.topLeft):
            return [.topLeft]
        case .single(.bottomRight):
            return [.bottomRight]
        case .single(.bottomLeft):
            return [.bottomLeft]
        }
    }
    
    var cornerMask: CACornerMask {
        switch self {
        case .master(.none):
            return []
        case .master(.all):
            return [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner]
        case .couple(.top):
            return [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        case .couple(.bottom):
            return [.layerMinXMaxYCorner, .layerMinXMaxYCorner]
        case .couple(.right):
            return [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        case .couple(.left):
            return [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        case .single(.topRight):
            return [.layerMaxXMinYCorner]
        case .single(.topLeft):
            return [.layerMinXMinYCorner]
        case .single(.bottomRight):
            return [.layerMaxXMaxYCorner]
        case .single(.bottomLeft):
            return [.layerMinXMaxYCorner]
        }
    }
}
