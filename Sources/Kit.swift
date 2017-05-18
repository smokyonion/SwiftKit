//
//  Kit.swift
//  SwiftKit
//
//  Created by Vincent Wayne on 5/18/17.
//  Copyright © 2017 Vincent Wayne. All rights reserved.
//

import Foundation

/// Describes a provider of SwiftKit extensions.
///
/// - note: `SwiftKitExtensionsProvider` does not indicate whether a type is
///         Kit. It is intended for extensions to types that are not owned
///         by the module in order to avoid name collisions and return type
///         ambiguities.
public protocol SwiftKitExtensionsProvider {}

public extension SwiftKitExtensionsProvider {
    /// A proxy which hosts Kit extensions for `self`.
    public var kit: Kit<Self> {
        return Kit(self)
    }

    /// A proxy which hosts static Kit extensions for the type of `self`.
    public static var kit: Kit<Self>.Type {
        return Kit<Self>.self
    }
}


// A `Kit` proxy hosts Kit extensions to `Base`.
public struct Kit<Base> {
    public let base: Base

    // Construct a proxy.
    //
    // - parameters:
    //   - base: The object to be proxied.
    fileprivate init(_ base: Base) {
        self.base = base
    }
}
