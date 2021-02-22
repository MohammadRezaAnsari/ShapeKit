//
//  SimpleShape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

struct SimpleShape: Shape {
    
    var corners: CACornerMask? = ShapeCornersEnum.master(.none).cornerMask
    var radius: Int? = 0
    
    public func draw(_ view: UIView) {}
}
