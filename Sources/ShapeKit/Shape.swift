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


extension Shape {
    
    public var corners: CACornerMask {
        get {
            .none
        }
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
