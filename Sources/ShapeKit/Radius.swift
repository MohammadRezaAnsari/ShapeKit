//
//  Radius.swift
//  
//
//  Created by MohammadReza Ansary on 2/24/21.
//

/// - This enum should be a struct inside the `theme`. What if we want to add an option where we need to have other values for a specific situation?
public enum Radius {

    case none
    case small
    case large
    case custom(Int)

    var rawValue: Int {
        switch self {
        case .none:
            return 0
        case .small:
            return 8
        case .large:
            return 16
        case .custom(let number):
            return number
        }
    }
}
