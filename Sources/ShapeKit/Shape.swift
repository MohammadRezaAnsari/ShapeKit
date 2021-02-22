//
//  File.swift
//  
//
//  Created by MohammadReza Ansary on 2/20/21.
//

import UIKit

public protocol Shape {
    var corners: CACornerMask? { get set }
    var radius: Int? { get set }
    
    func draw(_ view: UIView)
}

extension Shape {
    func draw(_ view: UIView) {
        fatalError("draw(view:) has not been implemented")
    }
}
