//
//  forceUnwrapMap.swift
//  Flow
//
//  Created by Philip Niedertscheider on 11.06.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

extension Array {

    @inlinable public func forceUnwrapMap<ElementOfResult>(_ transform: (Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult] {
        return try self.map({
            try transform($0)!
        })
    }
}
