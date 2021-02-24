//
//  UIView+Shape.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public extension UIView {
    
    func setShape(_ shape: Shape) {
        shape.apply(self)
    }
}
