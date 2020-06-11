//
//  not.swift
//  Flow
//
//  Created by Philip Niedertscheider on 11.06.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

public func not<V>(_ predicate: @escaping (V) -> Bool) -> (V) -> Bool {
    return { !predicate($0) }
}
