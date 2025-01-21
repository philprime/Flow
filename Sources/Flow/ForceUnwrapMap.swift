//
//  ForceUnwrapMap.swift
//  Flow
//
//  Created by Philip Niedertscheider on 11.06.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

extension Array {
    /// Returns an array containing the results of mapping the given closure
    /// over the sequence’s elements and force unwrapping `Optional` values.
    ///
    ///     let values: [Int?] = [1, 2, 3, nil]
    ///     let unwrapped: [Int] = values.map(forceUnwrapMap)
    ///
    /// - Parameter transform: A mapping closure. transform accepts an element
    /// of this sequence as its parameter and returns a transformed value of
    /// the same or of a different type.
    /// - Returns: An non-optional array containing the transformed elements of
    /// this sequence.
    @inlinable public func forceUnwrapMap<ElementOfResult>(
        _ transform: (Element) throws -> ElementOfResult?
    ) rethrows -> [ElementOfResult] {
        try self.map {
            guard let result = try transform($0) else {
                preconditionFailure("Unwrapped nil value")
            }
            return result
        }
    }
}
