//
//  CACornerMask+CaseIterable.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

extension CACornerMask {
    
    public typealias AllCases = CACornerMask
    
    public static var allCases: AllCases {
        [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    }
}
