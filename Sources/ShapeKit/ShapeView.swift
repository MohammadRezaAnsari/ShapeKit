//
//  File.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

open class ShapeView: UIView {
    
    public final func shape(_ shape: Shapes) {
        shape.rawValue.draw(self)
    }
    
    open func shape(_ shape: Shape) {
        shape.draw(self)
    }
}
