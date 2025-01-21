//
//  not.swift
//  Flow
//
//  Created by Philip Niedertscheider on 11.06.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

/// Evaluates the given predicate and returns a negated result
///
/// - Parameter predicate: Returns a boolean values
/// - Returns: The negated result of the predicate evaluation
public func not<V>(_ predicate: @escaping (V) -> Bool) -> (V) -> Bool {
    return { !predicate($0) }
}
