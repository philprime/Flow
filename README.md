# Flow

![Swift](https://github.com/philprime/Flow/workflows/Swift/badge.svg)

A collection of useful functional programming methods in Swift.

## Boolean Logic

### `not`

Negates a boolean value.

**Example:**

```swift
[true, false, true].map(not) == [false, true, false]
```

## Array Mapping

### `forceUnwrapMap`

Force unwraps an array of `Optional` values, therefore returning a strong typed array.

**Example:**

```swift
let values: [Int?] = [1, 2, 3, nil]
let unwrapped: [Int] = values.map(forceUnwrapMap)
```