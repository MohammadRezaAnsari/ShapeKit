//
//  Shape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public protocol Shape {
    var corners: CACornerMask { get set }
    var radius: Int { get set }
    
    func apply(_ view: UIView)
}

/// - What is the purpose of  the shape if nothing is required?
extension Shape {
    
    public var corners: CACornerMask {
        get {
            /// - Try to write single line functions in a single line.
            .none
        }
        /// - Empty functions are evils! Specially when they have arguments! (Don't forget the `newValue`)
        set { }
    }
       
    public var radius: Int {
        get {
            Radius.none.rawValue
        }
        set { }
    }
    
    func apply(_ view: UIView) { }
}
