//
//  Radius.swift
//  
//
//  Created by MohammadReza Ansary on 2/24/21.
//

public enum Radius {

    case none
    case minor
    case major
    case custom(Int)

    var rawValue: Int {
        switch self {
        case .none:
            return 0
        case .minor:
            return 8
        case .major:
            return 16
        case .custom(let number):
            return number
        }
    }
}
